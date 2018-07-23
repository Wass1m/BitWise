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
    <link href="css/stylenav.css" rel="stylesheet" type="text/css">
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
    if (session.getAttribute("ID") != null) {             // RECUPERATION DE L'ID EN COURS
        idi = ((Integer) session.getAttribute("ID")).intValue(); } else { idi = 0; }

    
        Connection coni= null;   // PREPARATION DES STATEMENTS
        PreparedStatement ps = null;
       
        Statement sti=null; 
        ResultSet rsi =null;
        String url = "jdbc:mysql://localhost:3306/tablewise";
        String user = "root";
        String dbpsw = "toor";
        String sql = "select * from identifiant where ID=?";

        try {
                                      // CONNEXION BASE DE DONNEES
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            coni = DriverManager.getConnection(url, user, dbpsw);
            ps = coni.prepareStatement(sql);
            ps.setInt(1, idi);
            rsi= ps.executeQuery();               // SELECTION DU RAW SPECIFIQUE A L'ID TROUVE
            rsi.first();
          


               // PUIS AFFICHAGES DES INFORMATIONS TROUVE DANS LA PAGE


%>
                          <!--====== Transfert de l'id et le type vers le JS pour notification    ===========-->
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
                         <a> <%=rsi.getString("IDtype")%> </a>
                         <img src="images/admin.png" alt="" style="margin-right: 10px;" >
                    </li>

         <!--======= Notification =========-->           
                     <li class="dropdown" style="float:right;" >
       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span id="counter" class="label label-pill label-danger count" style="border-radius:10px;"></span> <span class="glyphicon glyphicon-envelope" style="font-size:18px;"></span></a>
       <ul id="err" class="dropdown-menu dropdown-messages dropdown-menu-right scrollable-menu ">
                       
                      
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
            <p class="exo">DASHBOARD</p>
        </div>
        <ol class="breadcrumb">
            <li><a href="#">Admin </a></li>
            <li class="active"> Welcome</li>
        </ol>
    </div>

    <!--======= BLOG =========-->
    
    
                    
 <section class="blog">
        <div class="container">
            <ul class="row">
                <li class="col-sm-8">

                    <!--======= BLOG POST=========-->
                    <div class="blog-post"> <img class="img-responsive" src="images/boss.jpg" alt="" > <span class="date"><i class="fa fa-clock-o"></i> <%= new Date() %></span> <a class="title-hed">Welcome tour your Administration DASHBOARD</a>

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
                                    <li><a href="Admin-IntervenantList.jsp">HandyMen</a></li>
                                    <li><a href="Admin-ClientList.jsp">Clients</a></li>
                                
                                </ul>
                            </li>
                        </ul>
                        <ul class="cate-sim">
                            <li><a href="Admin-Qualifications.jsp">Qualifications </a></li>
                            <li><a href="Admin-Affec.jsp">Contracts </a></li>
                             <li><a href="Admin-Statistiques.jsp">Statistiques</a></li>

                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </section>
    <!--======= FOOTER =========-->

    
                       <!--======= --COUNTER FUNCTION HAPPYCLIENT - YEARS - AWARDS - COUNTER FUNCTION -- =========-->
    <%

        try{           // CONNEXION BASE DE DONNEES
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
            Statement stt = con1.createStatement();
                                                              // SELECTION DES CARACTERISTIQUES
            ResultSet rss = stt.executeQuery("select * from caracentreprise");

            rss.first();


                     // AFFICHAGE DANS LA PAGE DES CARACTERISTIQUES
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


<!--=== JS NOTIFICATION ====-->


<script type="text/javascript">
    
 var interv =  setInterval(function(){ loadNotif2(); }, 10000);
   
   </script>
  
  
  
   <script>
 $(document).on('click', '.dropdown-toggle', function(){
  $('.count').html('');
  loadNotif1('yes');
 });
     </script>



</body>
</html>