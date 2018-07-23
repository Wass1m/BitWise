<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!----------logout function ------->
<%    session.removeAttribute("user");
      session.removeAttribute("IDclient");
      session.removeAttribute("IDadmin");
      session.removeAttribute("ID");
      session.invalidate();
      response.sendRedirect("./index.jsp"); %>