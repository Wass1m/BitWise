<%@page import="java.sql.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
String view=request.getParameter("view");

String type=request.getParameter("type");
String idc=request.getParameter("idc");

String htmlfinal="";



                 Class.forName("com.mysql.jdbc.Driver");
                 
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
                    Statement st=con.createStatement();
ResultSet rs=null;
                    
                    
if(type.equals("Intervenant")) {

rs=st.executeQuery("select * from intervenant where IDident="+idc+"");
rs.first();
int idi=Integer.parseInt(rs.getString("IDintervenant"));
rs = st.executeQuery("select * from notification n INNER JOIN contrat c on c.IDcontrat=n.IDcontrat INNER JOIN planning p on p.IDcontrat = n.IDcontrat INNER JOIN intervenant i on i.IDintervenant=p.IDintervenant WHERE i.IDintervenant="+idi+" AND n.notif_status=0  AND n.type='Intervenant' ");
    


    if(rs.next()){
        rs.beforeFirst();
        rs.last();
      
    htmlfinal= Integer.toString(rs.getRow());
     
    } else htmlfinal="zero";
} else if(type.equals("Client")) {
    
    rs=st.executeQuery("select * from client where IDident="+idc+"");
rs.first();
int idi=Integer.parseInt(rs.getString("client"));
rs = st.executeQuery("select * from notification n INNER JOIN CONTRAT c on c.IDcontrat=n.IDcontrat INNER JOIN client cl on cl.IDclient=c.IDclient WHERE cl.IDclient="+idi+" AND n.type='Client' AND n.notif_status=0 ");
    


    if(rs.next()){
        rs.beforeFirst();
        rs.last();
      
    htmlfinal= Integer.toString(rs.getRow());
     
    } else htmlfinal="zero";
    
} else if(type.equals("Admin")) {
    
    // on selectionne les notifications de type ADMINS qui sont de status 0 c'est a dire non consulté
   rs = st.executeQuery("SELECT * FROM notification WHERE notif_status=0 AND type='ADMIN' ");
    if(rs.next()){
        rs.beforeFirst();
        rs.last();
      
    htmlfinal= Integer.toString(rs.getRow()); // recuperation du nombre de notifications
     
    } else htmlfinal="zero"; // si n'exite pas zero, on le mettera=0 ou '' dans le javascript plus tard
}
  out.println(htmlfinal);

  

rs.close();
st.close();
con.close();
 

%>






