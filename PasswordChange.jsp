<%@page import="Hash.MailMan"%>
<%@page import="Hash.CodeGen"%>
<%@page import="Hash.CodeGen"%>
<%@page import="Hash.Encrypt"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% try{   String email=request.getParameter("email");
          String code=request.getParameter("code");
          String password=request.getParameter("Password");
         
          Class.forName("com.mysql.jdbc.Driver");

          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
          String SQL="Select * from identifiant where Code=? and email=? ";
          String SQL2="Update  identifiant Set Password=? where Code=? and Email=?";
          PreparedStatement st=con.prepareStatement(SQL);
          PreparedStatement st2=con.prepareStatement(SQL2);
          st.setString(1, code);
          st.setString(2, email);
          out.print("ResultSet rs=st.executeQuery();");
          ResultSet rs=st.executeQuery();
          out.print("ResultSet rs=st.executeQuery(); executed");
          if(rs.next()){ 
              password=Encrypt.hashPassword(password).substring(0, 31);
          st2.setString(1, password);
          st2.setString(2, code);
          st2.setString(3, email); 
          st2.execute();
          response.sendRedirect("index.jsp");}
          else{response.sendRedirect("ResetPassword.jsp");
          }
                            }
            catch(Exception e) { 
              session.setAttribute("message", e.toString());
                response.sendRedirect("Error.jsp");
            }
             
             
      %>