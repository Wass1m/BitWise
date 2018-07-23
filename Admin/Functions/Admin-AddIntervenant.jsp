<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    // recup des infos de l'identifiant depuis les inputs
    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
     password = Encrypt.hashPassword(password).substring(0,31);
    String email = request.getParameter("email");
   
    String code="UND";
     
    
    // Recuperation des infos de l'intervenant depuis les inputs
    String nom = request.getParameter("nominterv");
    String prenom = request.getParameter("prenominterv");
    String tel = request.getParameter("Tel");
    String adresse = request.getParameter("Adresse");
    String localisation = request.getParameter("Localisation");
    String sexe = request.getParameter("Sexe");
      String qualif = request.getParameter("Qualif");
        String date = request.getParameter("DateN");

    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Statement st = con.createStatement();
        Statement st1 = con.createStatement();
        ResultSet rs = null;

// creation identifiant intervenant
        st.executeUpdate("insert into identifiant (username,email,password,IDtype,Code,Active) values ('"+username+"','"+email+"','"+password+"','Intervenant','"+code+"','1') ");
        rs = st1.executeQuery("select * from identifiant where username='"+username+"' ");
        rs.first();
        // creation intervenant
        int ID = rs.getInt("ID"); // recuperation id intervenant
        st1.executeUpdate("insert into intervenant (Nom,Prenom,Adresse,Localisation,Datenaissance,Tel,Sexe,IDident,NomQualif) values ('"+nom+"','"+prenom+"','"+adresse+"','"+localisation+"','"+date+"','"+tel+"','"+sexe+"','"+ID+"','"+qualif+"') ");

        
        // Augmentation du nombre d'effectif de la qualification de l'intervenant
        rs = st1.executeQuery("select Effectif from qualification where NomQualif='"+qualif+"'");
        rs.first();
        int undeplus=rs.getInt("Effectif") + 1;
        st1.executeUpdate("UPDATE QUALIFICATION SET Effectif="+undeplus+" where NomQualif='"+qualif+"' ");
        
        // REDIRECTION
        response.sendRedirect("../RedirectPages/AdditionDone.jsp");


    }
    catch (Exception e ) {
        out.println(e);


    }

%>