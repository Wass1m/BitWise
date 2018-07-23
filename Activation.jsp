<%@page import="Hash.Encrypt"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% try{
          String email=request.getParameter("email");
         
          String code=request.getParameter("code");
          String SQL="Select code from identifiant where email=?";
          String SQL2="Update identifiant set Active=1 where email=?";
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
          PreparedStatement st=con.prepareStatement(SQL);
          PreparedStatement st2=con.prepareStatement(SQL2);
           st.setString(1, email);
           st2.setString(1,email);
           ResultSet rs=st.executeQuery();
           if (rs.next()) { String X= rs.getString("code");
           
               if(X.equals(code)){ st2.executeUpdate();
               response.sendRedirect("./Client/Profile.jsp");
               }
               
                   } 
               
           else{
                response.sendRedirect("Error.jsp");}
                    }
            catch(Exception e) { 
                session.setAttribute("message", e.toString());
                response.sendRedirect("Error.jsp");
            }
             
             
      %>