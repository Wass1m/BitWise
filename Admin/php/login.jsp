<%--
  Created by IntelliJ IDEA.
  User: Wassim
  Date: 22/03/2017
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
</head>
<body>
<%! String userdbName;
    String userdbPsw;
    String dbUsertype;
%>
<%
    Connection con= null;
    PreparedStatement ps = null;
    PreparedStatement ps2 = null;
    ResultSet rs = null;
    ResultSet rs2 = null;


    String url = "jdbc:mysql://localhost:3306/tbw_01";
    String user = "root";
    String dbpsw = "toor";

    String sql = "select * from identifiant where username=? and password=? and IDtype=?";
    String sql2 = "select * from intervenant where IDident =?";

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String usertype = request.getParameter("usertype");

    if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))) && !usertype.equals("select"))
    {
        try{

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, password);
            ps.setString(3, usertype);
            rs = ps.executeQuery();
            rs.first();
            int userID =rs.getInt("ID");


            ps2 = con.prepareStatement(sql2);
            ps2.setInt(1,userID);
            rs2 = ps2.executeQuery();

            rs.beforeFirst();

            if(rs.next())
            {
                userdbName = rs.getString("username");
                userdbPsw = rs.getString("password");
                dbUsertype = rs.getString("IDtype");

                if(name.equals(userdbName) && password.equals(userdbPsw) && usertype.equals(dbUsertype))
                {
                    rs2.first();
                    String Name = rs2.getString("Nom");
                    String Prenom = rs2.getString("Prenom");
                    int idinterv = rs2.getInt("IDintervenant");

                    session.setAttribute("name",Name);
                    session.setAttribute("prenom",Prenom);
                    session.setAttribute("usertype", dbUsertype);
                    session.setAttribute("idinterv",idinterv);
                    response.sendRedirect("Admin-IntervWelcome.jsp");
                }
            }
            else
                response.sendRedirect("error.jsp");
            rs.close();
            ps.close();
            rs2.close();


        }
        catch(SQLException sqe)
        {
            out.println(sqe);
        }
    }


%>
</body>
</html>