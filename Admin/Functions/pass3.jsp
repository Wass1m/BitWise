<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
            
            String sn=request.getParameter("ver");
            String X=request.getParameter("X");
            
            String bad;
           
            boolean B=false;
              
                 Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
                    Statement st=con.createStatement();
                       Statement st2=con.createStatement();
                    
                    ResultSet rs = st.executeQuery("select * from intervenant where Tel='"+sn+"'");
                    ResultSet rs2 = st2.executeQuery("select * from client where Tel='"+sn+"'"); // this is for name
                    while(rs.next()){
                       
                   
                        B=Boolean.logicalOr(B,sn.equals(rs.getString("Tel")) );
                    }
                       while(rs2.next()){
                       
                   
                        B=Boolean.logicalOr(B,sn.equals(rs2.getString("Tel")) );
                    }
                        if(B) { bad="Used Number";
                       

                                               
                        out.println("<font color=red>");
                        out.println(bad);
                        out.println("</font>"); 
                    
 
                    }else {
 
                        out.println("<font color=green>");
                        out.println("Free Number");
                        out.println("</font>");
 
                    } 
 
rs.close();
st.close();
con.close();
 
%>