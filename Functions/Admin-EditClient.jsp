<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    

    try{
               // RECUPERATION DES INPUTS (INFORMATIONS)
         String ID = request.getParameter("IDinterv");
         String nom = request.getParameter("nom");
         String prenom = request.getParameter("prenom");
         String adresse = request.getParameter("adresse");
         String tel = request.getParameter("tel");
         String sexe = request.getParameter("sexe");
         
                 
      // CONNEXION BASE DE DONNEES
          Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tbw6","root","toor");
        Statement st = con.createStatement();
        
     
        // TEST SI CHAMP INPUT VIDE  OU NON + MISE A JOURS 
     
    if(!nom.equals("")) {st.executeUpdate("update intervenant set nom='"+nom+"' WHERE IDintervenant='"+ID+"' ");}
  if(!prenom.equals("")) {st.executeUpdate("update intervenant set prenom='"+prenom+"' WHERE IDintervenant='"+ID+"' "); }
      if(!adresse.equals("")) {st.executeUpdate("update intervenant set adresse='"+adresse+"' WHERE IDintervenant='"+ID+"' ");}
    if(!tel.equals("")) {st.executeUpdate("update intervenant set Tel='"+tel+"' WHERE IDintervenant='"+ID+"' ");}
    if(!sexe.equals("")) {st.executeUpdate("update intervenant set sexe='"+sexe+"' WHERE IDintervenant='"+ID+"' ");}


    
    
        // REDIRECTION

        response.sendRedirect("../Admin-IntervenantList.jsp");


    }
    catch (Exception e ) {
        out.println(e);


    }

%>


