<%@page import="Hash.Encrypt"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% try{
          String user=request.getParameter("user");
         
          String pass=request.getParameter("password");
          pass = Encrypt.hashPassword(pass).substring(0,31);
 
          String localisation=request.getParameter("localisation");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
         Statement st=con.createStatement();
           Statement st2=con.createStatement();
            ResultSet rs;
            ResultSet rs2;
            
           String match;
            if (user.contains("@"))  rs=st.executeQuery("select * from identifiant where email='"+user+"'");
            else rs=st.executeQuery("select * from identifiant where username='"+user+"'");
                    
            if (rs.next()) { 
                            match=rs.getString("password");
                            String type=rs.getString("IDtype");
                            int ID=rs.getInt("ID");
                            if (pass.equals(match)) {  if(type.equals("Client")){    if(user.contains("@")) user=rs.getString("username");
                                                                                                        rs2=st2.executeQuery("Select * from client where IDident='"+ID+"'");
                                                                                                        if (rs2.next()){
                                                                                                        String a=rs2.getString("IDclient");
                                                                                                        session.setAttribute("IDclient",a);
                                                                                                       
                                                                                                        session.setAttribute("user",user);
                                                                                                        
                                                                                                      response.sendRedirect("./client/Profile.jsp");
                                                                                                        } }
                                                               else if(type.equals("Intervenant")){
                                                                                            if(user.contains("@")) user=rs.getString("username");
                                                                                            session.setAttribute("ID",ID);
                                                                                            response.sendRedirect("Intervenant/Admin-IntervWelcome.jsp");
                                                                                            }
                                                               else if(type.equals("Admin")) { if(user.contains("@")) user=rs.getString("username");
                                                                     session.setAttribute("ID",ID);
                                                                     response.sendRedirect("Admin-HomePage.jsp");}
                                                                }
                            else out.print("wrong password");
            }
            else out.print("Account doesnt Exist");
           
            
               
              
                    }
            catch(Exception e) { 
                out.print(e);
            }
             
             
      %>