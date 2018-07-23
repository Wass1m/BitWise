<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%

    //// VALIDICATION DU CONTRAT

    int idcontr =  Integer.parseInt(request.getParameter("IDCont")); // RECUPERATION DE l'ID du CONTRAT

    
    // CONNEXION BASE DE DONNEES
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Statement st = con.createStatement();  


// UPDATE DE L'ETAT DE NOTRE CONTRAT ( ON VIENT D'y REPONDRE )
        st.executeUpdate("update contrat set Etat='VALIDATED' where IDcontrat="+idcontr+"");
        
        // CONVERSION DATE
          SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
          Date todayd = new Date();
           String today=df.format(todayd);
   
           // CREATION D'UNE NOTIFICAITON POUR LE CLIENT LUI FAISANT PART DE LA REPONSE
        st.executeUpdate("insert into NOTIFICATION (type,notif_subject,notif_text,notif_status,date,IDcontrat) values ('Client','CONTRAT[NEW | UNPAID])','YOUR CONTRACT N°:"+idcontr+" JUST  RECEIVE AN ANSWER','0','"+today+"','"+idcontr+"') ");

        response.sendRedirect("../Admin-Affec.jsp");  // REDIRECTION


    }
    catch (Exception e ) {
        out.println(e);


    }

%>