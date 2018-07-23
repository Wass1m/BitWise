<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    

    try{
        
         // RECUPERATION DES INPUTS (INFORMATIONS)
         
         String IDold = request.getParameter("IDold"); // ID intervenant
        if(IDold==null) IDold = request.getParameter("IDold1"); // Si IDintervenant==null on prend ID client
        int id= Integer.parseInt(IDold);
         
        //CONNEXION BASE DE DONNEES
          Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Statement st = con.createStatement();
        
        // ON SELECTIONNE LE TYPE DE L'IDENTIFIANT CORRESPONDANT
        ResultSet rs = st.executeQuery("select IDtype from identifiant where ID="+id+" ");
        rs.first(); // ON POINTE PREMIER ELEMENT
        
        String type=rs.getString("IDtype");
      
        if(type.equals("Client")) {
            
        // MISE A JOUR MOT DE PASSE  USER CLIENT SEULEMENT
        
     String password = request.getParameter("password");
    password = Encrypt.hashPassword(password).substring(0,31);
     st.executeUpdate("update identifiant set password='"+password+"'  WHERE ID="+id+" ");

            
        } else if(type.equals("Intervenant")) {
        
   // MISE A JOUR DES CHAMPS RENSEIGNES PAR ADMIN POUR LE USER INTERVENANT
   // TEST SI CHAMPS VIDES + MISE A JOUR
   
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   if(!password.equals("")) { password = Encrypt.hashPassword(password).substring(0,31); }
    String email = request.getParameter("email");
       
    
    
if(!username.equals("")) {st.executeUpdate("update identifiant set username='"+username+"' WHERE ID="+id+" ");
IDold=username;
}
  if(!password.equals("")) {  st.executeUpdate("update identifiant set password='"+password+"' WHERE ID="+id+" ");  }
      if(!email.equals("")) {st.executeUpdate("update identifiant set email='"+email+"' WHERE ID="+id+" "); }


    
    
        }

        // REDIRECTION
        response.sendRedirect("../Admin-UserList.jsp");


    }
    catch (Exception e ) {
        out.println(e);


    }

%>


