
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<%
    
    
    // INITILISATION DES VARIABLES DE CONNEXION 
    
    Connection con1= null;
    Connection con2= null;
    Statement st1=null;
    Statement st2=null;
    PreparedStatement ps1 = null;
    ResultSet rs = null;
    ResultSet rs1 = null;

    
    
    int SUP_ID =  Integer.parseInt(request.getParameter("IDC")); // VA CONTENIR L'ID A ARCHIVER

   
    String sql1 = "select * from identifiant where ID=?";


    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/archivewise","root","toor");
      
        ps1 = con1.prepareStatement(sql1);


        ps1.setInt(1,SUP_ID);                // PREPARD STATEMENT UTILISANT LA REQUETE "SQL1" 
        rs = ps1.executeQuery();
        rs.first();
        String Type = rs.getString("IDtype"); // RECUPERATION DU TYPE POUR l'ARCHIVAGE

        if(Type.equals("Intervenant") ) {

           st1 = con2.createStatement();
           rs1 = st1.executeQuery("select * from intervenant where IDident="+SUP_ID+"");
           
           if(rs1.next()) {
           
           Statement st =con1.createStatement();
           st.executeUpdate("delete from intervenant where IDident="+SUP_ID+"  ");
           st.executeUpdate("delete from identifiant where ID="+SUP_ID+"  ");

           } else {
               
               // CONNEXION A NOTRE BASE DE DONNEES
               
             st1 = con1.createStatement();
             rs1=st1.executeQuery("select * from intervenant where  IDident="+SUP_ID+" ");
             rs1.first();
                     
             // RECUPERATION DES INFORMATIONS POUR L'ARCHIVAGE
             
         String  IDuser=rs.getString("ID");
         String  username=rs.getString("username");
         String email=rs.getString("email");
         String password=rs.getString("password");
        
         String Code=rs.getString("Code");
         int Ac=rs.getInt("Active");
         
         String IDintervenant= rs1.getString("IDintervenant");
         String Nom=rs1.getString("Nom");
         String Prenom=rs1.getString("Prenom");
         String Adresse=rs1.getString("Adresse");
         String Local=rs1.getString("Localisation");
         String DateN=rs1.getString("DateNaissance");
         String Tel=rs1.getString("Tel");
         String Sexe=rs1.getString("Sexe");
        String Qualif=rs1.getString("NomQualif");
         
           // CONNEXION A LA BASE D'ARCHIVAGE
            st2 = con2.createStatement();
            
          /// STOCKAGE DES DONNES
            
       st2.executeUpdate("INSERT INTO identifiant (ID,username,email,password,IDtype,Code,Active) values ('"+IDuser+"','"+username+"','"+email+"','"+password+"','"+Type+"','"+Code+"','"+Ac+"')  ");
       st2.executeUpdate("INSERT INTO intervenant (IDintervenant,Nom,Prenom,Adresse,Localisation,DateNaissance,Tel,Sexe,IDident,NomQualif) values ('"+IDintervenant+"','"+Nom+"','"+Prenom+"','"+Adresse+"','"+Local+"','"+DateN+"','"+Tel+"','"+Sexe+"','"+IDuser+"','"+Qualif+"') ");
           
       
          
      
      
      
        } 
           
           
           // SINON ARCHIVAGE CLIENT
        } else if(Type.equals("Client")) {
            
            
           st1 = con2.createStatement();
           rs1 = st1.executeQuery("select * from client where IDident="+SUP_ID+"");
           
           if(rs1.next()) {
            
           Statement st =con1.createStatement();
           st.executeUpdate("delete from client where IDident="+SUP_ID+"  ");
           st.executeUpdate("delete from identifiant where ID="+SUP_ID+"  ");

           } else {
               
               // CONNEXION A NOTRE BASE DE DONNEES
               
             st1 = con1.createStatement();
             rs1=st1.executeQuery("select * from Client where  IDident="+SUP_ID+" ");
             rs1.first();
                     
             // RECUPERATION DES INFORMATIONS POUR L'ARCHIVAGE
             
         String  IDuser=rs.getString("ID");
         String  username=rs.getString("username");
         String email=rs.getString("email");
         String password=rs.getString("password");
        
         String Code=rs.getString("Code");
         int Ac=rs.getInt("Active");
         
         String IDclient= rs1.getString("IDclient");
         String Ctype= rs1.getString("Ctype");
         String Nom=rs1.getString("Nom");
         String Prenom=rs1.getString("Prenom");
         String Adresse=rs1.getString("Adresse");
         String Local=rs1.getString("Localisation");
         String Tel=rs1.getString("Tel");
         String avis=rs1.getString("avis");
         String Sat=rs1.getString("Satisfaction");
         
           // CONNEXION A LA BASE D'ARCHIVAGE
        st2 = con2.createStatement();
            
          /// STOCKAGE DES DONNES
            
       st2.executeUpdate("INSERT INTO identifiant (ID,username,email,password,IDtype,Code,Active) values ('"+IDuser+"','"+username+"','"+email+"','"+password+"','"+Type+"','"+Code+"','"+Ac+"')  ");
       st2.executeUpdate("INSERT INTO client (IDclient,Ctype,Nom,Prenom,Adresse,Localisation,Tel,IDident,Satisfaction,avis) values ('"+IDclient+"','"+Ctype+"','"+Nom+"','"+Prenom+"','"+Adresse+"','"+Local+"','"+Tel+"','"+IDuser+"','"+Sat+"','"+avis+"') ");
           
       st1.executeUpdate("DELETE FROM CLIENT WHERE IDident="+SUP_ID+"");
       st1.executeUpdate("DELETE FROM IDENTIFIANT WHERE ID="+SUP_ID+"");
          
      
      
      
        } 
            
        }

       response.sendRedirect("../RedirectPages/Admin-ArchivageDone.jsp");

    }
    catch (Exception e ) {
        out.println(e);


    }

%>

</body>
</html>
