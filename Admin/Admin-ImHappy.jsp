<%@page import="java.sql.*"%>
<%@ page import="javax.xml.transform.Result" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%


    int iduser =  Integer.parseInt(request.getParameter("IDuser"));

    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tbw5","root","toor");
        Statement st = con.createStatement();
        ResultSet rs= st.executeQuery("select satisfaction from client where IDclient='"+iduser+"'");
        rs.first();
        String happy=rs.getString("satisfaction");

if(!happy.equals("OUI")) {

    st.executeUpdate("update client set satisfaction='OUI' where IDclient='"+iduser+"'");
    Statement st1 = con.createStatement();
    ResultSet rs1 = st1.executeQuery("select * from caracentreprise");
    rs1.first();
    int Nb = rs1.getInt("Nombre") + 1;
    st1.executeUpdate("update caracentreprise set Nombre='"+Nb+"' ");

}
        response.sendRedirect("Admin-ClientList.jsp");


    }
    catch (Exception e ) {
        out.println(e);


    }

%>