
<%-- 
    Document   : inscription
    Created on : 2017-03-21, 20:12:09
    Author     : PC
--%>
<%@page import="Hash.CodeGen"%>
<%@page import="Hash.MailMan"%>
<%@page import="Hash.Encrypt"%> <!-- Hashing lib --> 


<%@page import="java.security.MessageDigest"%>
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
         
          String type=request.getParameter("type");
          String localisation=request.getParameter("localisation");
    
          String Code=CodeGen.nextSessionId().toUpperCase().substring(0,4);
          MailMan mail= new MailMan();
          String message="your activation code ="+Code;
          Class.forName("com.mysql.jdbc.Driver");
        
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
           Statement st=con.createStatement();
           Statement st2=con.createStatement();
           /*-----------------------------------*/
                password=Encrypt.hashPassword(password);
                password=password.substring(0, 31);
                
           /*-----------------------------------*/

             st.execute("insert into identifiant(username,email,password,IDtype,Code,Active)Values('"+user_name+"','"+email+"','"+password+"','Client','"+Code+"','0')");
               
             ResultSet rs=st.executeQuery("select ID from identifiant where username=\""+user_name+"\"");
             ResultSet rs1;
               
                if (rs.next()){
                    int ID=rs.getInt("ID");
                    st.execute("insert into client(Ctype,Nom,Prenom,Adresse,Localisation,tel,IDident,Satisfaction,Avis) Values('"+type+"','"+nom+"','"+prenom+"','"+adresse+"','"+localisation+"','"+tel+"','"+ID+"','NON','')");
                    mail.sendMail(message,email);
                    rs1=st.executeQuery("select IDClient from Client where IDident='"+ID+"'");
                    if(rs1.next()) { session.setAttribute("IDclient", rs1.getInt("IDclient")); }
                    session.setAttribute("IDclient",rs1.getString("IDclient"));
                       session.setAttribute("user",user_name);
                    
                    response.sendRedirect("Activate.jsp");
                  }
                    }
            catch(Exception e) { 
               
        
                session.setAttribute("message", e.toString());
                response.sendRedirect("Error.jsp");
            }
                          
      %>
    </body>
</html>
