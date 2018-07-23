<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    //  Recuperation les informations rentrés en tant qu'inputs
    
    String nomq = request.getParameter("nomqualif");
    String desc = request.getParameter("description");
    int tarif =  Integer.parseInt(request.getParameter("Tarif"));

    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Statement st = con.createStatement();

// insertion de la nouvelle qualification et ses attributs
        st.executeUpdate("insert into qualification (NomQualif,Effectif,TarifJ,description) values ('"+nomq+"','0','"+tarif+"','"+desc+"') ");


        response.sendRedirect("../Admin-Qualifications.jsp"); // redirections


    }
    catch (Exception e ) {
        out.println(e);


    }

%>


