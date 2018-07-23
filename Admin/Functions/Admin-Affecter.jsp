<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

   int idinterv = Integer.parseInt(request.getParameter("IDinterv"));
   int idcontr =  ((Integer) session.getAttribute("IDCont")).intValue();

    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
        Statement st = con.createStatement();
        Statement st1 = con.createStatement();


        st.executeUpdate("insert into planning (IDintervenant,IDcontrat) values ('"+idinterv+"','"+idcontr+"') ");


        response.sendRedirect("../Admin-AffectationContrat.jsp?IDCont="+idcontr+"");


    }
    catch (Exception e ) {
        out.println(e);


    }

%>