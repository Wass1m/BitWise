<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
            
            String sn=request.getParameter("ver");
            String X=request.getParameter("X");
            String good;
            String bad=X;
            boolean A=false;
            boolean B=false;
              
                 Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
                    Statement st=con.createStatement();
                    
                    ResultSet rs = st.executeQuery("select * from identifiant where username='"+sn+"'or email='"+X+"'");  // this is for name
                    while(rs.next()){
                        A=Boolean.logicalOr(A,X.equals(rs.getString("email")) ); // matching Emails 
                   
                        B=Boolean.logicalOr(B,sn.equals(rs.getString("username")) ); // matching Usernames
                    }
                   if(Boolean.logicalOr(A,B))
                    {   
                        if(Boolean.logicalAnd(A,B)) {bad="Username and Email Taken";}
                        else if(B) {bad="Username  Taken";}
                        else if(A) {bad="Email Taken";}

                                               
                        out.println("<font color=red>");
                        out.println(bad);
                        out.println("</font>"); 
                    
 
                    }else {
 
                        out.println("<font color=green>");
                        out.println("available");
                        out.println("</font>");
 
                    } 
 
rs.close();
st.close();
con.close();
 
%>