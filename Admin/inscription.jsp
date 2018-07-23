<%-- 
    Document   : inscription
    Created on : 2017-03-21, 20:12:09
    Author     : PC
--%>

<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% try{
          String user_name =request.getParameter("user_name");
          String nom =request.getParameter("nom");
          String prenom=request.getParameter("prenom");
          String adresse =request.getParameter("adresse");
          String tel =request.getParameter("tel");
          String email=request.getParameter("email");
          String password=request.getParameter("password");
           password = Encrypt.hashPassword(password).substring(0,31);
         
          String type=request.getParameter("type");
          String localisation=request.getParameter("localisation");
          
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tbw3","root","");
           Statement st=con.createStatement();
           
             st.execute("insert into identifiant(username,email,password,IDtype)Values('"+user_name+"','"+email+"','"+password+"','Client')");
               
             ResultSet rs=st.executeQuery("select ID from identifiant where username=\""+user_name+"\"");
            
               
                if (rs.next()){
               
                    st.execute("insert into client(Ctype,Nom,Prenom,Adresse,Localisation,tel,IDident) Values('"+type+"','"+nom+"','"+prenom+"','"+adresse+"','"+localisation+"','"+tel+"','"+rs.getInt("ID")+"')");
                    session.setAttribute("ID", user_name);
                    response.sendRedirect("profile.jsp");
                  }
                    }
            catch(Exception e) { 
                out.print(e);
            }
             
             
      %>
    </body>
</html>
