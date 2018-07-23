<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    

    try{
               // RECUPERATION DES INPUTS (INFORMATIONS)
         String feed= request.getParameter("feedn");      
         String ID = request.getParameter("IDcl");
        
         
                 
      // CONNEXION BASE DE DONNEES
          Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Statement st = con.createStatement();
        
       
        // TEST SI CHAMP INPUT VIDE  OU NON + MISE A JOURS 
     
    if(!feed.equals("")) {st.executeUpdate("update client set avis='"+feed+"[NEW]' WHERE IDclient='"+ID+"' ");}
 

    
    
        // REDIRECTION

        response.sendRedirect("./Client/Profile.jsp");


    }
    catch (Exception e ) {
        out.println(e);


    }

%>

