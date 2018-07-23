<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%


    int idcontr = Integer.parseInt(request.getParameter("IDCont"));
    int IDC=0;
    
    
    
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/archivewise","root","toor");
        
        Statement st1 = con1.createStatement();
        Statement st2 = con2.createStatement();
        Statement stq = con1.createStatement();
        ResultSet rsd=null;
        ResultSet rsc=null;
        
        boolean b=false;
        boolean b1=false;
        
        Statement test = con2.createStatement();
        
        
        // ARCHIVAGE DU CONTRAT ACTUEL

       // RECUPERATION DES INFOS DU CLIENT  
         rsd=st1.executeQuery("select * from client cl inner join contrat c on c.IDClient=cl.IDclient where IDcontrat="+idcontr+"");
         rsd.first();
         
         String client=rsd.getString("IDclient");
         rsc=st2.executeQuery("select * from client");
         // VERIFICATION DE L'EXISTENCE DU CLIENT
         while(rsc.next())
         {
             if(client.equals(rsc.getString("IDclient"))) b1=true;
         }
         
        // CREATION SI NON EXISTANT
         if(!b1) {
             
             rsd=st1.executeQuery("select * from identifiant ide inner join client c on ide.ID=c.IDident WHERE c.IDclient="+client+"");
             rsd.first();
             st2.executeUpdate("insert into identifiant(ID,username,email,password,IDtype,Code,Active) values ('"+rsd.getString("ID")+"','"+rsd.getString("username")+"','"+rsd.getString("email")+"','"+rsd.getString("password")+"','"+rsd.getString("IDtype")+"','"+rsd.getString("Code")+"','"+rsd.getString("Active")+"') ");
             st2.executeUpdate("insert into client (IDclient,Ctype,Nom,Prenom,Adresse,Tel,IDident,Satisfaction,avis) values ('"+rsd.getString("IDclient")+"','"+rsd.getString("Ctype")+"','"+rsd.getString("Nom")+"','"+rsd.getString("Prenom")+"','"+rsd.getString("Adresse")+"','"+rsd.getString("Tel")+"','"+rsd.getString("IDident")+"','"+rsd.getString("Satisfaction")+"','"+rsd.getString("avis")+"')    ");
         }
        
        
        // CREATION DU CONTRAT EN BASE D'ARCHIVAGE
        
         rsd=st1.executeQuery("select * from contrat where IDcontrat="+idcontr+"");
         rsd.first();
         st2.executeUpdate("insert into contrat (IDcontrat,Datedebut,Datefin,IDclient,Etat,Facture) values ('"+rsd.getString("IDcontrat")+"','"+rsd.getString("Datedebut")+"','"+rsd.getString("Datefin")+"','"+rsd.getString("IDclient")+"','"+rsd.getString("Etat")+"','"+rsd.getString("Facture")+"')    ");
         
        // AJOUT DES QUALIFICATIONS DEMANDEES PAR CE DERNIER
         rsd=st1.executeQuery("select * from qualifneeded where IDcontrat="+idcontr+"");
        while(rsd.next()) {
         st2.executeUpdate("insert into qualifneeded (IDcontrat,NomQualif,Nombre) values ('"+rsd.getString("IDcontrat")+"','"+rsd.getString("NomQualif")+"','"+rsd.getString("Nombre")+"')    ");
         
        }
        // ARCHIVAGE CONTRAT
        

        ResultSet rstest=test.executeQuery("select * from identifiant");

        ResultSet rs= stq.executeQuery("select * from identifiant ide INNER JOIN Intervenant i on ide.ID=i.IDident INNER JOIN Planning p on p.IDintervenant=i.IDintervenant  INNER JOIN contrat c on p.IDcontrat=c.IDContrat WHERE p.IDContrat="+idcontr+"");
        
        while(rs.next())
        {
            
         String  IDuser=rs.getString("ID");
         String  username=rs.getString("username");
         String email=rs.getString("email");
         String password=rs.getString("password");
         String Type=rs.getString("IDtype");
     
         String Code=rs.getString("Code");
         int Ac=rs.getInt("Active");
         
         
         while(rstest.next()) 
         {
             if(username.equals(rstest.getString("username"))) b=true;
         }
         
         if(!b) { 
            // SI INTERVENANT N'EXISTE PAS
            
           // ON CREER UN NOUVEAU IDENTIFIANT DANS LA BASE D'ARCHIVAGE
         st2.executeUpdate("INSERT INTO identifiant (ID,username,email,password,IDtype,Code,Active) values ('"+IDuser+"','"+username+"','"+email+"','"+password+"','"+Type+"','"+Code+"','"+Ac+"')  ");
    
         // ON RECUPERE LES INFORMATIONS DE NOTRE INTERVENANT
         ResultSet rs1=st1.executeQuery("select * from intervenant where IDident="+IDuser+"");
         rs1.first();
         
         int IDintervenant= Integer.parseInt(rs1.getString("IDintervenant"));
         IDC=IDintervenant;
         String Nom=rs1.getString("Nom");
         String Prenom=rs1.getString("Prenom");
         String Adresse=rs1.getString("Adresse");
         String Local=rs1.getString("Localisation");
         String DateN=rs1.getString("DateNaissance");
         String Tel=rs1.getString("Tel");
         String Sexe=rs1.getString("Sexe");
         String Qualif=rs1.getString("NomQualif");
         
         // ON AJOUTE L'INTERVENANT SUIVANT L'IDENTIFIANT CREER DANS LA BASE DE DONNE D'ARCHIVAGE
         st2.executeUpdate("INSERT INTO intervenant (IDintervenant,Nom,Prenom,Adresse,Localisation,DateNaissance,Tel,Sexe,IDident,NomQualif) values ('"+IDintervenant+"','"+Nom+"','"+Prenom+"','"+Adresse+"','"+Local+"','"+DateN+"','"+Tel+"','"+Sexe+"','"+IDuser+"','"+Qualif+"') ");

      
        
      
         
         
         
         
         
         
          // INSERTION DU CONTRAT DANS LE PLANNING
          st2.executeUpdate("insert into Contrat_Fait (IDintervenant,IDcontrat) values ('"+IDC+"','"+idcontr+"') ");
          
          // LIBERER L'INTERVENANT DU CONTRAT
          st1.executeUpdate("DELETE from planning where IDintervenant="+IDC+" AND IDcontrat="+idcontr+"  ");

         
         } else {
              
             
             // CAS OU L'Intervenant EXISTE DEJA
             ResultSet rs1=st1.executeQuery("select * from intervenant where IDident="+IDuser+"");
             rs1.first();
             // ON Insert le contrat fait dans Contrat_Fait en base d'archivage
             st2.executeUpdate("insert into Contrat_Fait (IDintervenant,IDcontrat) values ('"+rs1.getString("IDintervenant")+"','"+idcontr+"') ");
             // LIBERER L'INTERVENANT DU CONTRAT
             st1.executeUpdate("DELETE from planning where IDintervenant="+rs1.getString("IDintervenant")+" AND IDcontrat="+idcontr+"  ");
             
             
         }
         
         
         
      
         
         
         //  REMISE PAR DEFAUT DE NOTRE BOOLEAN DE TEST D'EXISTANCE
         b=false;
         
        }
         
        
    // MISE A JOUR DE L'ETAT DE NOTRE CONTRAT 'ARCHIVE'
    st1.executeUpdate("UPDATE CONTRAT set Etat='ENDED' WHERE IDcontrat="+idcontr+"");
   
    //REDIRECTION
    response.sendRedirect("../RedirectPages/ContractEnded.jsp");
        


    }
    catch (Exception e ) {
        out.println(e);


    }

%>