<%@page import="java.sql.*"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%


    Class.forName("com.mysql.jdbc.Driver").newInstance();

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tbw5","root","toor");
    Statement st = con.createStatement();

    ResultSet rs = st.executeQuery("select nombre from Happyclient where clienthappy='oui' ");

    rs.first();

     String nombre = rs.getString("Nombre");




        out.println(nombre);






%>