<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    

    try{
               // RECUPERATION DES INPUTS (INFORMATIONS)
         String state= request.getParameter("state");      
         String ID = request.getParameter("id");
        
         String feed="";
                 
      // CONNEXION BASE DE DONNEES
          Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Statement st = con.createStatement();
        
       
        // TEST SI CHAMP INPUT VIDE  OU NON + MISE A JOURS 
     
        if(state.equals("agree")) {
            ResultSet rsa=st.executeQuery("select avis from client where IDclient="+ID+"");
            rsa.first();
            feed=rsa.getString("avis");
            feed = feed.replace("[NEW]", "");
            st.executeUpdate("update client set avis='"+feed+"' WHERE IDclient='"+ID+"' ");
        }
    else if(state.equals("disagree")) {
        
            st.executeUpdate("update client set avis='DISAPPROVED' WHERE IDclient='"+ID+"' ");
           }
 

    
    
        // REDIRECTION

        response.sendRedirect("../Admin-ClientList.jsp");


    }
    catch (Exception e ) {
        out.println(e);


    }

%>

