<%@page import="Hash.MailMan"%>

<%@page import="Hash.CodeGen"%>
<%@page import="Hash.Encrypt"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% try{   String email=request.getParameter("email");
          String Code=CodeGen.nextSessionId().toUpperCase().substring(0,4);
          MailMan mail= new MailMan();
          String message="your Password reset code ="+Code;
         
          Class.forName("com.mysql.jdbc.Driver");

          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
          String SQL="Update identifiant set code=? where email=?";
          String SQL2="select * from identifiant where email=?";
          PreparedStatement st=con.prepareStatement(SQL);
          PreparedStatement st2=con.prepareStatement(SQL2);
          st2.setString(1, email);
         ResultSet rs=st2.executeQuery();
          if (rs.next()){
          mail.sendMail(message,email);
          st.setString(1, Code);
          st.setString(2, email);
          st.execute();
          response.sendRedirect("ResetPassword.jsp");}
          else { session.setAttribute("message", "Account doesnt exist");
              response.sendRedirect("Error.jsp"); } 
                    }
            catch(Exception e) { 
               session.setAttribute("message", e.toString());
                response.sendRedirect("Error.jsp");
            }
             
             
      %>