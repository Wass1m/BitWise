<%@page import="Hash.Encrypt"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% try{
          String user=request.getParameter("user");
         String SQL="Select * from client where IDident=?";
          String pass=request.getParameter("password");
          pass=Encrypt.hashPassword(pass).substring(0, 31);
          
          
          String localisation=request.getParameter("localisation");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
           Statement st=con.createStatement();
           PreparedStatement st2=con.prepareStatement(SQL);
           
            ResultSet rs;
            ResultSet rs2;
           String match;
            if (user.contains("@"))  rs=st.executeQuery("select * from identifiant where email='"+user+"'");
            else rs=st.executeQuery("select * from identifiant where username='"+user+"'");
                    
            if (rs.next()) { 
                            match=rs.getString("password");
                            String type=rs.getString("IDtype");
                            String active=rs.getString("Active");
                            int ID=rs.getInt("ID");
                            
                            if (pass.equals(match)) {
                                                               if(type.equals("Client"))
                                                                                       if(active.equals("1"))             {    st2.setInt(1, ID);
                                                                                                  rs2=st2.executeQuery();
                                                                                                  if (rs2.next()) {String IDclient= rs2.getString("IDclient");
                                                                                                  session.setAttribute("IDclient", IDclient);}
                                                                                        if(user.contains("@")) user=rs.getString("username");
                                                                                                        session.setAttribute("user",user);
                                                                                                        
                                                                                                         response.sendRedirect("./Client/Profile.jsp");
                                                                                                        
                                                                                                    }
                                                                                       else{ response.sendRedirect("./Activate.jsp");}
                                                               else if(type.equals("Admin")){ 
                                                                                            if(user.contains("@")) user=rs.getString("username");
                                                                                            session.setAttribute("ID",ID);
                                                                                            response.sendRedirect("./Admin/Admin-HomePage.jsp");
                                                                                           
                                                                                            }
                                                               else if(type.equals("Intervenant")){
                                                                                            if(user.contains("@")) user=rs.getString("username");
                                                                                            session.setAttribute("ID",ID);
                                                                                            response.sendRedirect("./Admin/Intervenant/Admin-IntervWelcome.jsp");
                                                                                            }
                                                                }
                            else { session.setAttribute("message", "Wrong Password!");
                                   response.sendRedirect("Error.jsp");
                                    }
            }
            else response.sendRedirect("Error.jsp");
           
            
               
              
                    }
            catch(Exception e) { 
                session.setAttribute("message", e.toString());
                response.sendRedirect("Error.jsp");
            }
             
             
      %>