<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
            
            String sn=request.getParameter("ver"); // RECUPERATION USERNAME
            String X=request.getParameter("X"); // RECUPEARATION EMAIL
            String good;
            String bad=X;
            boolean A=false;
            boolean B=false;
              
                 Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
                    Statement st=con.createStatement();
                                                               // TEST SI EMAIL ET USERNAME CONTENU DANS NOS IDENTIFIANTS
                    ResultSet rs = st.executeQuery("select * from identifiant where username='"+sn+"'or email='"+X+"'");  // this is for name
                    while(rs.next()){
                        A=Boolean.logicalOr(A,X.equals(rs.getString("email")) );  // SI EMAIL EXISTE 
                   
                        B=Boolean.logicalOr(B,sn.equals(rs.getString("username")) ); // SI USERNAME EXISTE
                    }
                   if(Boolean.logicalOr(A,B))
                    {   
                        if(Boolean.logicalAnd(A,B)) {bad="Username and Email Taken";}
                        else if(B) {bad="Username  Taken";}   
                        else if(A) {bad="Email Taken";}

                                               
                        out.println("<font color=red>");
                        out.println(bad);                    // ON REVOIT LA REPONSE DE LA REQUETE HTTP
                        out.println("</font>"); 
                    
 
                    }else {
 
                        out.println("<font color=green>");
                        out.println("available");                       // REPONSE REQUETE
                        out.println("</font>");
 
                    } 
 
rs.close();
st.close();  
con.close();
 
%>