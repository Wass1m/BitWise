<%@page import="java.sql.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
String view=request.getParameter("view");

String type=request.getParameter("type"); // RECUPERATION DU TYPE
String idc=request.getParameter("idc"); // RECUPERATION DE l'IDENTIFIANT

ResultSet rsi=null;
String html1="";
String html2="";              // les html's vont servir a stocker notre notificaton
String html3="";
String html4="";
String htmlfinal="";

              // connexion database
                 Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
                    Statement st=con.createStatement();

                    
                    
 // ON TEST LES DIFFERENTS TYPE DE USER, POUR SAVOIR QUELS TYPE DE NOTIFS RECUPERER
if(type.equals("Intervenant")) {
    

rsi=st.executeQuery("select * from intervenant where IDident="+idc+""); // on selectionne lintervenant en rapport avec les notifications
rsi.first();
int idi=Integer.parseInt(rsi.getString("IDintervenant"));
rsi = st.executeQuery("select * from notification n INNER JOIN contrat c on c.IDcontrat=n.IDcontrat INNER JOIN planning p on p.IDcontrat = n.IDcontrat INNER JOIN intervenant i on i.IDintervenant=p.IDintervenant WHERE i.IDintervenant="+idi+" AND n.type='Intervenant' ORDER BY notif_id DESC LIMIT 5 ");
    // on selectionne les notification concercnants les contrats en rapport avec l'intervenant



    
  // Si il ya des contrats ( c'est a dire notifs ) on envoit la notif, htmlfinal recoit la premiere notif, et ainsi de suite 
   
  if(rsi.next()){
        rsi.beforeFirst();
        while(rsi.next()) {
    html1="<li><a href="+"./Intervenant-InfoContrat.jsp?IDcontrat="+rsi.getString("IDcontrat")+""+">  <div>";
    html2= "<strong>"+ rsi.getString("Notif_Subject") + "</strong> <span class=\"pull-right text-muted\"><em style=\"color:blue\">"+rsi.getString("date")+"</em> </span>   </div>";
    html3=" <div>"+rsi.getString("Notif_Text")+"</div>";
    html4="</a></li><li class="+"divider"+"></li> ";
    htmlfinal= htmlfinal + " "+ html1 + html2+html3+html4;
        }
    } else htmlfinal ="<li><a href="+"lol"+ " class="+"text-bold text-italic"+">No Notification Found</a></li>"; // sinon on a pas de notification

  
  
  
 // SI C'est un CLIENT ON RECUPERE LES NOTIFICATIONS PROPORE AU CLIENT (SELON SES CONTRATS)
 
} else if(type.equals("Client")) {
    
    

rsi=st.executeQuery("select * from client where IDident="+idc+""); // on selectionne le client en rapport avec les notifications
rsi.first();
int idi=Integer.parseInt(rsi.getString("IDclient")); 
rsi = st.executeQuery("select * from notification n INNER JOIN CONTRAT c on c.IDcontrat=n.IDcontrat INNER JOIN client cl on cl.IDclient=c.IDclient WHERE cl.IDclient="+idi+" AND n.type='Client' and n.notif_status='0' ORDER BY notif_id DESC LIMIT 5 ");
        // on selectionne les notification concercnants les contrats en rapport avec le client

        
          // Si il ya des contrats ( c'est a dire notifs ) on envoit la notif, htmlfinal recoit la premiere notif, et ainsi de suite 

   if(rsi.next()){
        rsi.beforeFirst();
        while(rsi.next()) {
    html1="<li><a href="+"./Etat.jsp?IDcontrat="+rsi.getString("IDcontrat")+""+">  <div>";
    html2= "<strong>"+ rsi.getString("Notif_Subject") + "</strong> <span class=\"pull-right text-muted\"><em style=\"color:blue\">"+rsi.getString("date")+"</em> </span>   </div>";
    html3=" <div>"+rsi.getString("Notif_Text")+"</div>";
    html4="</a></li><li class="+"divider"+"></li> ";
    htmlfinal= htmlfinal + " "+ html1 + html2+html3+html4;
        }
    } else htmlfinal ="<li><a href="+"lol"+ " class="+"text-bold text-italic"+">No Notification Found</a></li>"; // sinon on a pas de notification

 


} else if(type.equals("Admin")) {
    
    if(view.equals("yes")) {
    st.executeUpdate("UPDATE notification SET notif_status=1 WHERE notif_status=0 AND type='Admin' ");
}

// ON SELECTIONNE LES NOTIFICATIONS A MONTRER 

    ResultSet rs = st.executeQuery("SELECT * FROM notification WHERE type='ADMIN' ORDER BY notif_id DESC LIMIT 5");
    // SI IL Y A DES NOTIFS A MONTRER
    if(rs.next()){  
        rs.beforeFirst();
        while(rs.next()) {               // ON RECUPERE LES NOTIFICATIONS 
    html1="<li><a href="+"./Admin-AffectationContrat.jsp?IDCont="+rs.getString("IDcontrat")+""+">  <div>";
    html2= "<strong>"+ rs.getString("Notif_Subject") + "</strong> <span class=\"pull-right text-muted\"><em style=\"color:blue\">"+rs.getString("date")+"</em> </span>   </div>";
    html3=" <div>"+rs.getString("Notif_Text")+"</div>";
    html4="</a></li><li class="+"divider"+"></li> ";
    htmlfinal= htmlfinal + " "+ html1 + html2+html3+html4;
        } 
         // SINON AUCUNE NOTIFICATIONS
    } else htmlfinal ="<li><a href="+"lol"+ " class="+"text-bold text-italic"+">No Notification Found</a></li>";
}
  out.println(htmlfinal); // on envoit la reponse http a l'ajax contenant nos notification


%>




