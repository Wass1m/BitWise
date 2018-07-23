<%--
  Created by IntelliJ IDEA.
  User: Wassim
  Date: 17/04/2017
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>

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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
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
            </ul>
        </div>
    </div>

    <!--======= HEADER =========-->
    <header>
        <div class="container">

            <!--======= LOGO =========-->
            <div class="logo"> <a href="#."><img src="images/logo1.png" alt="" ></a> </div>

            <!--======= TOP INFORMATION =========-->
            <div class="header-contact">
                <ul class="row">
                    <li class="col-xs-6"> <i class="fa fa-home"></i>
                        <p class="exo">SBA </p>
                    </li>
                    <li class="col-xs-6"> <i class="fa fa-phone"></i>
                        <h6>+213 05 57 92 00</h6>
                        <p class="exo" style="width: 220px;">incbitwise@gmail.com</p>
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
                </ul>

                <!--======= SUBMIT COUPON =========-->
                <div class="sub-nav-co"> <a href="#."><i class="fa fa-search"></i></a> </div>
            </nav>
        </div>
    </header>

    <!--======= BANNER =========-->
    <div class="sub-banner">
        <div class="container">
            <h1 >LOGIN PROBLEM</h1>
            <p class="exo" >SOMETHING WENT WRONG, You'll be redirected in few seconds  , or <a style="color:#ffc107" href="Admin-Index.jsp">CLICK HERE</a> </p>
        </div>
        <ol class="breadcrumb">
            <li><a href="#">Intervenant </a></li>
            <li class="active"> Error </li>
        </ol>
    </div>

    
  
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
                            <li><a href="#.">About Us</a></li>
                            <li><a href="#."> Our Staffs </a></li>
                            <li><a href="#."> Recent Projects </a></li>
                            <li><a href="#."> Latest News </a></li>
                            <li><a href="#."> Pricing Details</a></li>
                            <li><a href="#."> Contact Us</a> </li>
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
                            <li><a href="#.">HandyMan Repairs</a></li>
                            <li><a href="#."> Drain Cleaning</a></li>
                            <li><a href="#."> Gas Lines</a></li>
                            <li><a href="#."> Sewer Lines</a></li>
                            <li><a href="#."> Water Damage Prevention</a></li>
                            <li><a href="#."> HandyMan Inspection</a> </li>
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
                    <p>Address: 44 New Design Street,
                        Melbourne 005 </p>
                    <p>Phone: +61 (123) 456 789</p>
                    <p>Fax: +91 5464 213</p>
                    <p>Email: info@example.com</p>

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

<script>
$(document).ready(function () {
    // Handler for .ready() called.
    window.setTimeout(function () {
        location.href = "./Admin-Index.jsp";
    }, 3000);
});
</script>

</body>
</html>