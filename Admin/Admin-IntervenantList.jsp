
<%--
  Created by IntelliJ IDEA.
  User: Wassim
  Date: 18/04/2017
  Time: 02:26
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HandyMan - Handy Man, Plumber HTML Template</title>
    <meta name="keywords" content="HTML5,CSS3,HTML,Template,Multi-Purpose,M_Adnan,Corporate Theme,HandyMan - Handy Man, Plumber HTML Template" >
    <meta name="description" content="HandyMan - Handy Man, Plumber HTML Template">
    <meta name="author" content="M_Adnan">

    <!-- FONTS ONLINE -->
    <link href='css/googlefont1.css' rel='stylesheet' type='text/css'>
    <link href='css/googlefont2.css' rel='stylesheet' type='text/css'>

    <!--MAIN STYLE-->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/main.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body  onload="loadNotif1(view=''); loadNotif2();">
     <style>.scrollable-menu {
    height: auto;
    max-height: 200px;
    overflow-x: hidden;
}</style>
<!-- Page Wrap ===========================================-->
<div id="wrap">

    <!--======= TOP BAR =========-->
    <div class="top-bar">
        <div class="container">
            <ul class="left-bar-side">
                <li>
                    <p class="exo">Quick Service.</p>
                </li>
                <li>
                    <p class="exo"> Quality Work.</p>
                </li>
                <li>
                    <p class="exo"> life time support. </p>
                </li>
            </ul>
            <ul class="right-bar-side social_icons">
                <li class="facebook"> <a href="#."><i class="fa fa-facebook"></i> </a></li>
                <li class="twitter"> <a href="#."><i class="fa fa-twitter"></i> </a></li>
                <li class="linkedin"> <a href="#."><i class="fa fa-linkedin"></i> </a></li>
                <li class="tumblr"> <a href="#."><i class="fa fa-tumblr"></i> </a></li>
                 <li class="tumblr" > <a  style="font-weight: bold;padding-right:60px;" href="Admin-Logout.jsp">Logout </a></li>

            </ul>
        </div>
    </div>
    
    <!-- LOGIN ID GET-ATTRIBUTE FUNCTION -->
    <%

    int idi;
    if (session.getAttribute("ID") != null) {   // RECUPERATION ID EN COURS
        idi = ((Integer) session.getAttribute("ID")).intValue(); } else { idi = 0; }

    
        Connection coni= null;
        PreparedStatement ps = null;
       
        Statement sti=null;             // connexion base de données
        ResultSet rsi =null;
        String url = "jdbc:mysql://localhost:3306/tablewise";
        String user = "root";
        String dbpsw = "toor";
        String sql = "select * from identifiant where ID=?";

        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            coni = DriverManager.getConnection(url, user, dbpsw);
            ps = coni.prepareStatement(sql);
            ps.setInt(1, idi);                        // selection des informations de l'id en cours depuis table
            rsi= ps.executeQuery();
            rsi.first();
          


// AFICHAGES DES INFORMATIONS DE L'ID DANS LA PAGE


%>

<input type="hidden" id="IDtype" name="IDC" value="<%=rsi.getString("IDtype")%>" >    
<input type="hidden" id="IDcnt" name="IDC1" value="<%=idi%>" >    

    <!--======= HEADER =========-->
    <header>
        <div class="container">

            <!--======= LOGO =========-->
            <div class="logo"> <a href="#."><img src="images/logo1.png" alt="" ></a> </div>

            <!--======= TOP INFORMATION =========-->
              <div class="header-contact">
        <ul class="row">
          <li class="col-xs-6"> <i class="fa fa-home"></i>
            <p class="exo"> Ecole Superieure D'informatique 
              Sidi      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp            Bel Abbes, Algerie.</p>
          </li>
          </li>
          <li class="col-xs-6"> <i class="fa fa-phone"></i>
            <h6>+213 48 74 94 52 </h6>
            <p class="exo">thebitwiseinc@gmail.com</p>
          </li>
        </ul>
      </div>

            <!--======= NAV =========-->
            <nav>

                <!--======= MENU START =========-->
                <ul class="ownmenu">
                   <li class="active"><a href="../index.jsp">Home</a>
            
          </li>
          <li><a href="../03-About.jsp">About Us </a></li>
         <li class=""><a href="../04-Services.jsp">Services</a></li> 
         <li><a href="../08-Gallery-Full-width.jsp">gALLERY</a></li>
         
          <li><a href="../12-Contact-Page.jsp">Contact us</a></li>
          <li><a href="../index.jsp">Pages</a> 
            
            <!--======= MEGA MENU =========-->
            <div class="megamenu full-width">
              <h6>All Pages</h6>
              <div class="row nav-post">
                <div class="col-sm-3 boder-da-r">
                  <ul>
                    <li><a href="../index.jsp">Home</a></li>
                    
                    <li><a href="../03-About.jsp">About</a></li>
                    <li><a href="../04-Services.jsp">Services</a></li>
                                       
                  </ul>
                </div>
                <div class="col-sm-3">
                  <ul>
	                <li><a href="../06-Services-Details.jsp">Services Details</a></li>
                   
                    <li><a href="../08-Gallery-Full-width.jsp">Gallery Full Width</a></li>
                  
                    <li><a href="../12-Contact-Page.jsp">Contact </a></li>
                  </ul>
                </div>
               
              </div>
            </div>
          </li>
                     <li><a href="Admin-HomePage.jsp">DashBOARD </a></li>
                    <!--======= ADMIN NAME - LOGO =========-->
                    <li style="float:right">
                         <a><%=rsi.getString("IDtype")%> </a>
                         <img src="images/admin.png" alt="" style="margin-right: 10px;" >
                    </li>

         <!--======= Notification =========-->           
                     <li class="dropdown" style="float:right;" >
       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span id="counter" class="label label-pill label-danger count" style="border-radius:10px;"></span> <span class="glyphicon glyphicon-envelope" style="font-size:18px;"></span></a>
         <ul id="err" class="dropdown-menu dropdown-messages dropdown-menu-right ">
                       
                      
                    </ul>

                <!--======= SUBMIT COUPON =========-->
                <div class="sub-nav-co"> <a href="#."><i class="fa fa-search"></i></a> </div>
            </nav>
        </div>
    </header>
<%


}catch(SQLException sqe)
{
response.sendRedirect("Admin-Error.jsp");
}

%>

    <!--======= BANNER =========-->
    <div class="sub-banner">
        <div class="container">
            <h1>ADMIN PANEL</h1>
            <p class="exo">Handymen List</p>
        </div>
        <ol class="breadcrumb">
            <li><a href="#">Admin </a></li>
            <li class="active"> Handymen</li>
        </ol>
    </div>

    <!--======= BLOG =========-->
    <section class="blog">
        <div class="container">
            <ul class="row">
                <li class="col-sm-8">

                    <!--======= BLOG POST=========-->
                    <div class="blog-post"> <img class="img-responsive" src="images/staff.png" alt="" > <span class="date"><i class="fa fa-clock-o"></i> <%= new Date() %></span> <a class="title-hed">Know more about our employees</a>

                        <!--======= TAGS =========-->
                        <ul class="small-tag">

                        </ul>
                    </div>


                <li class="col-sm-4">
                    <div class="blog-side-bar">
                        <!--=======  CATEGORIES  FILTER =========-->
                        <h5>ADMIN MENU</h5>
                        <ul>
                            <li class="dropdown" >
                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Tables
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="Admin-UserList.jsp">Users</a></li>
                                    <li><a href="Admin-IntervenantList.jsp">Handymen</a></li>
                                    <li><a href="Admin-ClientList.jsp">Clients</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="cate-sim">
                            <li><a href="Admin-Qualifications.jsp">Qualifications</a></li>
                            <li><a href="Admin-Affec.jsp">Contracts </a></li>
                             <li><a href="Admin-Statistiques.jsp">Statistics</a></li>

                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </section>

    <table id="intervenants" class="table table-striped table-bordered  table-hover table-inverse" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th>Handyman ID</th>
            <th>Name</th>
            <th>Last Name</th>
            <th>Adress</th>
            <th>Phone Number</th>
            <th>Sex</th>
          
            <th>ID</th>
             <th>Qualification</th>
            <th style="text-align:center; font-size:medium; ">MODIFICATIONS</th>

        </tr>
        </thead>
        <tfoot>
        <tr>
            <th>Handymen ID</th>
            <th>Name</th>
            <th>Last Name</th>
            <th>Adress</th>
            <th>Phone Number</th>
            <th>Sex</th>
    
            <th>ID</th>
             <th>Qualification</th>
            <th style="text-align:center; font-size:medium; ">MODIFICATIONS</th>

        </tr>
        </tfoot>
        <tbody>
        <%
            String test=null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();

                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
                Statement st1 = con.createStatement();
                ResultSet rs1= st1.executeQuery("select * from intervenant");
                while(rs1.next()){

        %>

      

        <tr>
            <td><%=rs1.getString("IDintervenant")%></td>
            <td><%=rs1.getString("Nom")%></td>
            <td><%=rs1.getString("Prenom")%></td>
            <td><%=rs1.getString("Adresse")%></td>
            <td><%=rs1.getString("Tel")%></td>
            <td><%=rs1.getString("Sexe")%></td>
          
            <td><%=rs1.getString("IDident")%></td>
            <td><%=rs1.getString("NomQualif")%></td>
            <td> <button type="button" class="btn btn-sm btn-default demo2" data-toggle="modal" data-target="#myModal1" onclick="document.getElementById('IDinterv').value='<%=rs1.getString("IDintervenant")%>'">EDIT</button>
                <button type="button" style="float:right" class="btn btn-sm btn-default" data-toggle="modal" data-target="#ID01" onclick="document.getElementById('IDC').value='<%=rs1.getString("IDident")%>'">Archive</button>
            </td>

        </tr>




        <%


                }


            }
            catch (Exception e ) {
                out.println(e);


            }
        %>

        </tbody>
    </table>

    <div class="text-center"> <a href="#." class="btn" data-toggle="modal" data-target="#myModal">Add a Handyman</a> </div>

<br>
    <br>
    <!--======= FOOTER =========-->

    <%

        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
            Statement stt = con.createStatement();

            ResultSet rss = stt.executeQuery("select * from caracentreprise");

            rss.first();








    %>




     

    <footer>
        <div class="container">
            <ul class="row">
                <li class="col-sm-3"> <img class="img-responsive" src="images/footer-img.png" alt="" > </li>

                    <!--======= HAPPY CLIENTS =========-->
        <li class="col-sm-3"> 
          
         <!--======= COUNTER =========-->
                    <div class="counters"> <i class="fa fa-heart-o"></i>
                        <p>HAPPY CLIENTS</p>
                        <span><%=rss.getString("Nombre")%></span> </div>
          <!--======= LINKS =========-->
          <h5>site links</h5>
          <hr>
          <div class="links">
            <ul>
              <li><a href="../03-About.jsp">About Us</a></li>
              <li><a href="../08-Gallery-Full-width.jsp"> Our Staffs </a></li>                    
              <li><a href="../06-Services-Details.jsp"> Pricing Details</a></li>
              <li><a href="../12-Contact-Page.jsp"> Contact Us</a> </li>
            </ul>
          </div>
        </li>
        
        <!--======= HAPPY CLIENTS =========-->
        <li class="col-sm-3"> 
          
           <!--======= COUNTER =========-->
                    <div class="counters"> <i class="fa fa-rocket"></i>
                        <p>year of service</p>
                        <span><%=rss.getString("yearsofservice")%></span> </div>
          <!--======= LINKS =========-->
          <h5>services</h5>
          <hr>
          <div class="links">
            <ul>
              <li><a >HandyMan Repairs</a></li>
              <li><a > Drain Cleaning</a></li>
              <li><a > Gas Lines</a></li>
              <li><a > Sewer Lines</a></li>
              <li><a > Water Damage Prevention</a></li>
              <li><a > HandyMan Inspection</a> </li>
            </ul>
          </div>
        </li>
        
        <!--======= HAPPY CLIENTS =========-->
        <li class="col-sm-3"> 
          
         <!--======= COUNTER =========-->
                    <div class="counters"> <i class="fa fa-trophy"></i>
                        <p>awards won</p>
                        <span><%=rss.getString("awardswon")%></span> </div>
          <!--======= LINKS =========-->
          <h5>Contact</h5>
          <hr>
          <p>Address: Ecole Superieure D'informatique 
              Sidi Bel Abbes, Algerie </p>
          <p>Phone:  +213 48 74 94 52</p>
          <p>Fax:  +213 48 74 94 52</p>
          <p>Email: thebitwiseinc@gmail.com</p>
          
          <!--======= SOCIAL ICONS =========-->
          
          <ul class="social_icons">
            <li class="facebook"> <a href="#."><i class="fa fa-facebook"></i> </a></li>
            <li class="twitter"> <a href="#."><i class="fa fa-twitter"></i> </a></li>
            <li class="linkedin"> <a href="#."><i class="fa fa-linkedin"></i> </a></li>
            <li class="tumblr"> <a href="#."><i class="fa fa-tumblr"></i> </a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="rights">
      <p>Copyright © 2015 HandyMan. All Rights Reserved.</p>
    </div>
        <%





            }
            catch (Exception e ) {
                out.println(e);


            }
        %>
    </footer>
</div>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.stellar.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/counter1.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/own-menu.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/datatables/jquerydatatables.js"></script>
<script type="text/javascript" src="js/datatables/bootsrapmin.js"></script>

<script type="text/javascript" src="js/Ajax.js"></script>


<script>

    $(document).ready(function ($) {
        $('#intervenants').dataTable();
    });

</script>


<!-- ADD INTERVENANT MODEL -->

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content" style="width:806px; right:200px; top:auto">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Enter Information</h4>
            </div>
            <div class="modal-body">
                <form action="./Functions/Admin-AddIntervenant.jsp">
                    <h4 class="modal-title">Account</h4>
                    <div class="form-group">
                        <input  onkeyup="loadXMLDocID()" type="text" name="username" id="username" class="form-control input-sm" placeholder="Username" required>
                    </div>
                    <div class="form-group">
                        <input onkeyup="loadXMLDocID()" type="email" name="email" id="email" class="form-control input-sm" placeholder="E-mail" required>
                    </div>
                   <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required onkeyup="checkPass(); return false;" minlength="6">
                    </div>

                    <div class="form-group">
                      <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="'Password Confirmation" onkeyup="checkPass(); return false;">
                         <span id="confirmMessage" class="confirmMessage"></span>
                    </div>
               
                    <h4 class="modal-title">Information</h4>
                    <div class="form-group">
                        <input  pattern="[A-Za-z\s]+" maxlength="20" title="Numbers and special Characters not allowed" type="text" name="nominterv" id="nomi" class="form-control input-sm" placeholder="Name" required>
                    </div>
                    <div class="form-group">
                        <input pattern="[A-Za-z\s]+" maxlength="20" title="Numbers and special Characters not allowed" type="text" name="prenominterv" id="prenomi" class="form-control input-sm" placeholder="Last Name" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="Adresse" id="Adressei" class="form-control input-sm" placeholder="Adress" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="Localisation" id="loc" class="form-control input-sm" placeholder="Localisation" required>
                    </div>
                    <div class="form-group">
                        <input type="date"  name="DateN" id="dat" class="form-control input-sm"  required>
                    </div>
                    <div class="form-group">
                        <input type="text" pattern="[0-9]*" maxlength="10" title="Characters not allowed" name="Tel" id="tel" class="form-control input-sm" placeholder="Phone (ex:05 55 55 44 55)" onkeyup="loadXMLDoc1()" required>
                    </div>
                    <div class="form-group">
                        <p <b> Gender </b> </p>                      
                   <select name="Sexe">
                   <option value="Male">Male</option>
                    <option value="Female">Female</option>
   
                       </select>  </div>

                    <BR>
                    <%

        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection conq = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
            Statement stt = conq.createStatement();

            ResultSet rsq = stt.executeQuery("select * from qualification");

           
// AFFICHAGE DES QUALIFICATIONS POUR LE CHOIX DE CELLE DE L'INTERVENANT 







    %>
                     <h4 class="modal-title">Qualifications </h4>
     <div class="form-group">
                                            
 <select name="Qualif">
     
     <% while(rsq.next()) {%>
    <option value="<%=rsq.getString("NomQualif")%>"><%=rsq.getString("NomQualif")%></option>
    <% } %>
   
  </select>                  </div>
                     
                     <br>
                    <input type="submit" id="mySubmit" value="Submit" class="btn btn-info btn-block ">
                </form>
            </div>
            <div class="modal-footer">
                   
                <div class="col-sm-6"> <span id="err1"></span></div>
                <div class="col-sm-6"> <span id="err2"></span></div>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>


</div>

      <%





            }
            catch (Exception e ) {
                out.println(e);


            }
        %>


<!-- EditIntervenant MODEL -->

<div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content" style="width:806px; right:200px; top:auto">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Enter Informations to change</h4>
            </div>
            <div class="modal-body">
                <form action="./Functions/Admin-EditIntervenant.jsp">
                   
                     <input type="hidden" id="IDinterv" name="IDinterv" value="" >
                    <br>
                     <div class="form-group">
                        <input  pattern="[A-Za-z\s]+" maxlength="20" title="Pas de numeros ou de caracteres speciaux" type="text" name="nom" id="nomintervenant" class="form-control input-sm" placeholder="New Name" >
                    </div>
                   
                    <div class="form-group">
                        <input  pattern="[A-Za-z\s]+" maxlength="20" title="Pas de numeros ou de caracteres speciaux"  type="text" name="prenom" id="prenom" class="form-control input-sm" placeholder="New Last Name"  ">
                    </div>
                    <div class="form-group">
                        <input type="text" name="adresse" id="adresse" class="form-control input-sm" placeholder="Adress"   >
                    </div>
        
                    <div class="form-group">
                        <input type="text" name="tel" id="tel1" class="form-control input-sm" placeholder="Phone ex : 05 55 88 89 99" onkeyup="loadXMLDoc3()">
                    </div>
                    
                    
                   
                    <input type="submit" id="mySubmit1" value="Submit" class="btn btn-info btn-block ">
                </form>
            </div>
            <div class="modal-footer">
            <div class="col-sm-6"> <span id="err3"></span></div>
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>


</div>

<!-- Archiving MODEL -->
<div class="modal in" id='ID01' style="display:none; z-index:1000;">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title"> HandyMan Archiving</h4>
      </div>
        
            
      <div class="modal-body">
          <p style="color:red;"><b> Are You Sure You Want To Archive this HandyMan?!<b></p>
        
        <div class="row">
            <div class="col-12-xs text-center">
                <form action='./Functions/Admin-Archivage.jsp' > 
                <input type="hidden" id="IDC" name="IDC" value="" >
                     <button type="submit" value='submit' class="btn btn-success btn-md" style="width:30%; margin-left:-200px;">Yes</button> </form>
                     <button class="btn btn-default" data-dismiss="modal" style="width:30%; margin-top:-65px; margin-right:-300px;" >No</button>
            </div>
        </div>
      </div> 
   
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<script type="text/javascript">
   
 
 var interv =  setInterval(function(){ loadNotif2() }, 10000);
   
   </script>
  
  
  
   <script>
 $(document).on('click', '.dropdown-toggle', function(){
  $('.count').html('');
  loadNotif1('yes');
 });
     </script>



</body>
</html>