<%-- 
    Document   : 04-Services
    Created on : 25 mai 2017, 14:03:54
    Author     : Wassim
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<link href='http://fonts.googleapis.com/css?family=Exo+2:700,600,200,800,300,400,500,100,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>

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
<body onload="loadNotif1(view=''); loadNotif2();">
       <%

    int idi;
    if (session.getAttribute("ID") != null) {
        idi = ((Integer) session.getAttribute("ID")).intValue(); } else { idi = 0; }

    %>
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
 <%
             
          if(idi!=0)  { 
              
              
          Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection conlog = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
            Statement sttlog = conlog.createStatement();
        ResultSet rslog = sttlog.executeQuery("select * from identifiant where ID="+idi+" ");
        rslog.first();
        
if(rslog.getString("IDtype").equals("Admin") || rslog.getString("IDtype").equals("Intervenant") ) {

 %>       
       <li class="tumblr" > <a  style="font-weight: bold;padding-right:60px;" href="Logout2.jsp">Logout </a></li>
<% }  } %>
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
           <%
             
          if(idi!=0)  { 
              
              
          Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection conlog = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
            Statement sttlog = conlog.createStatement();
        ResultSet rslog = sttlog.executeQuery("select * from identifiant where ID="+idi+" ");
        rslog.first();
        
if(rslog.getString("IDtype").equals("Client")) {

 %>       
           <li class="active"><a href="./Client/Profile.jsp">Profile</a>
<% } else if(rslog.getString("IDtype").equals("Admin") || rslog.getString("IDtype").equals("Intervenant") ) {    %>
           <li class="active"><a href="index.jsp">Home</a> 
       <% } } else {  %>  
        <li class="active"><a href="index.jsp">Home</a>
       <%  }  %> 
          </li>
          <li><a href="03-About.jsp">About Us </a></li>
         <li class=""><a href="04-Services.jsp">Services</a></li> 
         <li><a href="08-Gallery-Full-width.jsp">gALLERY</a></li>
         
          <li><a href="12-Contact-Page.jsp">Contact us</a></li>
          <li><a href="index.jsp">Pages</a> 
            
            <!--======= MEGA MENU =========-->
            <div class="megamenu full-width">
              <h6>All Pages</h6>
              <div class="row nav-post">
                <div class="col-sm-3 boder-da-r">
                  <ul>
                    <li><a href="index.jsp">Home</a></li>
                    
                    <li><a href="03-About.jsp">About</a></li>
                    <li><a href="04-Services.jsp">Services</a></li>
                                       
                  </ul>
                </div>
                <div class="col-sm-3">
                  <ul>
	                <li><a href="06-Services-Details.jsp">Services Details</a></li>
                   
                    <li><a href="08-Gallery-Full-width.jsp">Gallery Full Width</a></li>
                  
                    <li><a href="12-Contact-Page.jsp">Contact </a></li>
                  </ul>
                </div>
               
              </div>
            </div>
          </li>
<%
             
          if(idi!=0)  {  
        String affichage="";
        
        Connection con= null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Statement sti=null; 
        Statement sta=null; 
        ResultSet rsi =null;
        String url = "jdbc:mysql://localhost:3306/tablewise";
        String user = "root";
        String dbpsw = "toor";
        String sql = "select * from identifiant where ID=?";

        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            sta=con.createStatement();
            ps.setInt(1, idi);
            rs= ps.executeQuery();
            rs.first();
          

String type=rs.getString("IDtype");

if(type.equals("Client")) {
 
rs=sta.executeQuery("select * from client where IDident="+idi+" ");
rs.first();

 affichage = rs.getString("Prenom")+" "+rs.getString("Nom");
 
} else if(type.equals("Intervenant")) {
   
rs=sta.executeQuery("select * from intervenant where IDident="+idi+" ");
rs.first();

 affichage = rs.getString("Prenom")+" "+rs.getString("Nom");
    
} else if(type.equals("Admin")) {

    affichage=rs.getString("IDtype");
}


%>     
<input type="hidden" id="IDtype" name="IDC" value="<%=type%>" >    
<input type="hidden" id="IDcnt" name="IDC1" value="<%=idi%>" >     
          <%if(affichage.equals("Admin")){%>
            <li><a href="./Admin/Admin-HomePage.jsp">DashBOARD </a></li>
           <li style="float:right">
                         <a><%=affichage%> </a>
                         <img src="images/admin.png" alt="" style="margin-right: 10px;" >
                    </li>
                    <% } else if(type.equals("Intervenant")) { %>
<li><a href="./Admin/Intervenant/Admin-IntervWelcome.jsp">Contract </a></li>
           <li style="float:right">
                         <a><%=affichage%> </a>
                        
                    </li>
                    <% } else if(type.equals("Client")) {  %>
        <li> <a>Client service </a>
                <ul class="dropdown">
            <li><a href="./Client/Signercontrat.jsp">Sign Contract</a></li>
              <li><a href="./Client/Historique.jsp">Contract History</a></li>
               <li><a  href="./Client/profileSettings.jsp">Settings</a></li>
               <li> <form action="./Client/Logout.jsp"> <button type="submit" value="submit" class="btn" id="btn_submit" >Logout</button> </form></li>
            </ul>
          
          </li>             
             <li style="float:right">
                         <a><%=affichage%> </a>
                        
                    </li>    
                    <% }%>
         <!--======= Notification =========-->           
                     <li class="dropdown" style="float:right;" >
       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span id="counter" class="label label-pill label-danger count" style="border-radius:10px;"></span> <span class="glyphicon glyphicon-envelope" style="font-size:18px;"></span></a>
        <ul id="err" class="dropdown-menu dropdown-messages dropdown-menu-right ">
                       
                      
                    </ul>
                     </li>
                     <%


}catch(SQLException sqe)
{
     out.print(sqe);
}

}
%>
        </ul>
        
        <!--======= SUBMIT COUPON =========-->
        <div class="sub-nav-co"> <a href="#."><i class="fa fa-search"></i></a> </div>
      </nav>
    </div>
  </header>
  
  <!--======= BANNER =========-->
  <div class="sub-banner">
    <div class="container">
      <h1>SERVICES</h1>
      <p class="exo">Take a view of all our work and services</p>
    </div>
    <ol class="breadcrumb">
      <li><a href="#">home </a></li>
      <li class="active"> SERVICES</li>
    </ol>
  </div>
  
  <!--======= SERVICES =========-->
  <section class="service-part">
    <div class="container">
      <ul class="row">
        <li class="col-md-4">
          <section> <img class="img-responsive" src="images/ser-img-1.jpg" alt="" >
            <div class="ser-details"> <a href="#.">emergecy service</a> </div>
          </section>
        </li>
        <li class="col-md-4">
          <section> <img class="img-responsive" src="images/ser-img-2.jpg" alt="" >
            <div class="ser-details"> <a href="#.">residential service</a> </div>
          </section>
        </li>
        <li class="col-md-4">
          <section> <img class="img-responsive" src="images/ser-img-3.jpg" alt="" >
            <div class="ser-details"> <a href="#.">commercial service</a> </div>
          </section>
        </li>
      </ul>
    </div>
  </section>
  
  <!--======= OFFER SERVICES =========-->
  <section class="offer-services">
    <div class="container"> 
      <!--======= TITTLE =========-->
      <div class="tittle">
        <h2>welcome to our HandyMan</h2>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div role="tabpanel"> 
            <!--======= NAV TABS =========-->
            <ul class="nav nav-tabs" role="tablist">
              <li role="presentation" class="active"><a href="#plumb"  role="tab" data-toggle="tab">HandyMan Repairs <i class="animated bounceInLeft fa fa-long-arrow-right"></i></a></li>
              <li role="presentation"><a href="#drain"  role="tab" data-toggle="tab">Drain Cleaning <i class="animated bounceInLeft fa fa-long-arrow-right"></i></a></li>
              <li role="presentation"><a href="#gas" role="tab" data-toggle="tab">GAS LINES <i class="animated bounceInLeft fa fa-long-arrow-right"></i></a></li>
              <li role="presentation"><a href="#sewer" role="tab" data-toggle="tab">SEWER LINES <i class="animated bounceInLeft fa fa-long-arrow-right"></i></a></li>
              <li role="presentation"><a href="#water" role="tab" data-toggle="tab">WATER DAMAGE PREVENTION <i class="animated bounceInLeft fa fa-long-arrow-right"></i></a></li>
              <li role="presentation"><a href="#tankless" role="tab" data-toggle="tab">TANKLESS WATER HEATERS <i class="animated bounceInLeft fa fa-long-arrow-right"></i></a></li>
              <li role="presentation"><a href="#plimbing" role="tab" data-toggle="tab">HandyMan INSPECTIONS <i class="animated bounceInLeft fa fa-long-arrow-right"></i></a></li>
            </ul>
          </div>
        </div>
        
        <!--======= NAV TABS CONTENT =========-->
        <div class="col-sm-5">
          <div class="tab-content"> 
            
            <!--======= HandyMan Repairs =========-->
            <div role="tabpanel" class="tab-pane animated fadeInRight active" id="plumb">
              <h4>HandyMan Repairs</h4>
              <p>Our experts have the state of the art tools,electronic equipment, and supplies to unclog any drain in a timely manner. </p>
              <ul>
                <li>
                  <p><i class="fa fa-tint"></i> Sinks and Faucets</p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Hot Water Dispenser </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Polybutylene Pipe Replacement </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Bathtubs and Showers </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Sump Pump and Sewage Ejector Pumps </p>
                </li>
              </ul>
              <a href="08-Gallery-Full-width.jsp" class="btn">LEARN MORE</a> </div>
            
            <!--======= HandyMan Repairs =========-->
            <div role="tabpanel" class="tab-pane animated fadeInRight" id="drain">
              <h4>Drain Cleaning</h4>
              <p>Our experts have the state of the art tools,electronic equipment, and supplies to unclog any drain in a timely manner. </p>
              <ul>
                <li>
                  <p><i class="fa fa-tint"></i> Sinks and Faucets</p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Hot Water Dispenser </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Polybutylene Pipe Replacement </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Bathtubs and Showers </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Sump Pump and Sewage Ejector Pumps </p>
                </li>
              </ul>
              <a href="#." class="btn">LEARN MORE</a> </div>
            
            <!--======= GAS LINES =========-->
            <div role="tabpanel" class="tab-pane animated fadeInRight" id="gas">
              <h4>GAS LINES </h4>
              <p>Our experts have the state of the art tools,electronic equipment, and supplies to unclog any drain in a timely manner. </p>
              <ul>
                <li>
                  <p><i class="fa fa-tint"></i> Sinks and Faucets</p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Hot Water Dispenser </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Polybutylene Pipe Replacement </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Bathtubs and Showers </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Sump Pump and Sewage Ejector Pumps </p>
                </li>
              </ul>
              <a href="#." class="btn">LEARN MORE</a></div>
            
            <!--======= SEWER LINES =========-->
            <div role="tabpanel" class="tab-pane animated fadeInRight" id="sewer">
              <h4>SEWER LINES</h4>
              <p>Our experts have the state of the art tools,electronic equipment, and supplies to unclog any drain in a timely manner. </p>
              <ul>
                <li>
                  <p><i class="fa fa-tint"></i> Sinks and Faucets</p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Hot Water Dispenser </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Polybutylene Pipe Replacement </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Bathtubs and Showers </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Sump Pump and Sewage Ejector Pumps </p>
                </li>
              </ul>
              <a href="#." class="btn">LEARN MORE</a></div>
            
            <!--======= WATER DAMAGE PREVENTION =========-->
            <div role="tabpanel" class="tab-pane animated fadeInRight" id="water">
              <h4>WATER DAMAGE PREVENTION</h4>
              <p>Our experts have the state of the art tools,electronic equipment, and supplies to unclog any drain in a timely manner. </p>
              <ul>
                <li>
                  <p><i class="fa fa-tint"></i> Sinks and Faucets</p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Hot Water Dispenser </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Polybutylene Pipe Replacement </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Bathtubs and Showers </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Sump Pump and Sewage Ejector Pumps </p>
                </li>
              </ul>
              <a href="#." class="btn">LEARN MORE</a></div>
            
            <!--======= TANKLESS WATER HEATERS =========-->
            <div role="tabpanel" class="tab-pane animated fadeInRight" id="tankless">
              <h4>TANKLESS WATER HEATERS</h4>
              <p>Our experts have the state of the art tools,electronic equipment, and supplies to unclog any drain in a timely manner. </p>
              <ul>
                <li>
                  <p><i class="fa fa-tint"></i> Sinks and Faucets</p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Hot Water Dispenser </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Polybutylene Pipe Replacement </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Bathtubs and Showers </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Sump Pump and Sewage Ejector Pumps </p>
                </li>
              </ul>
              <a href="#." class="btn">LEARN MORE</a></div>
            
            <!--======= HandyMan INSPECTIONS =========-->
            <div role="tabpanel" class="tab-pane animated fadeInRight" id="plimbing">
              <h4>HandyMan INSPECTIONS </h4>
              <p>Our experts have the state of the art tools,electronic equipment, and supplies to unclog any drain in a timely manner. </p>
              <ul>
                <li>
                  <p><i class="fa fa-tint"></i> Sinks and Faucets</p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Hot Water Dispenser </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Polybutylene Pipe Replacement </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Bathtubs and Showers </p>
                </li>
                <li>
                  <p><i class="fa fa-tint"></i> Sump Pump and Sewage Ejector Pumps </p>
                </li>
              </ul>
              <a href="#." class="btn">LEARN MORE</a></div>
          </div>
        </div>
        <div class="col-sm-4"> <img class="img-responsive img-up" src="images/offer-img.jpg" alt="" > </div>
      </div>
    </div>
  </section>
  
  <!--======= WHY CHOOSE US =========-->
  <section class="services why-choose">
    <div class="container">
      <div class="tittle">
        <h2>why choose us</h2>
      </div>
      
      <!--======= SERVICES ROW =========-->
      <ul class="row">
        <!--======= SERVICES =========-->
        <li class="col-md-6">
          <div class="sec-in"> <i class="fa fa-clock-o"></i>
            <h6>24/7 Availability</h6>
            <hr>
            <p>We are available and ready to serve you 24/7 , 365 a year , just tell us what you need and we'll be there for you</p>
          </div>
        </li>
        
        <!--======= SERVICES =========-->
        <li class="col-md-6">
          <div class="sec-in"> <i class="fa fa-user"></i>
            <h6>genius workers</h6>
            <hr>
            <p>Our workers are the best in their field </p>
          </div>
        </li>
        
        <!--======= SERVICES =========-->
        <li class="col-md-6">
          <div class="sec-in"> <i class="fa fa-usd"></i>
            <h6>low pricing</h6>
            <hr>
            <p>What makes us unique is that we have the lowest prices compared to any other competitor  </p>
          </div>
        </li>
        
        <!--======= SERVICES =========-->
        <li class="col-md-6">
          <div class="sec-in"> <i class="fa fa-thumbs-o-up"></i>
            <h6>free estimation</h6>
            <hr>
            <p>what can we say, we're just the best </p>
          </div>
        </li>
      </ul>
    </div>
  </section>
  
  <!--======= WHY CHOOSE US =========-->
  <section class="call-us">
    <div class="call-inner">
      <div class="container">
        <h3>Don't See What You Need? Call Us today!</h3>
        <h1>+213 48 74 94 52</h1>
      </div>
    </div>
  </section>
  
  <!--======= FOOTER =========-->

    <%

        
                    // RECUPERATION DES CARACTERISTIQUES DE L'ENTREPRISE (AWARDS ETCC) à AFFICHER

        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
            Statement stt = con1.createStatement();

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
              <li><a href="03-About.jsp">About Us</a></li>
              <li><a href="08-Gallery-Full-width.jsp"> Our Staffs </a></li>                    
              <li><a href="06-Services-Details.jsp"> Pricing Details</a></li>
              <li><a href="12-Contact-Page.jsp"> Contact Us</a> </li>
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
<script src="js/counter.js"></script> 
<script src="js/owl.carousel.min.js"></script> 
<script src="js/jquery.sticky.js"></script> 
<script src="js/jquery.magnific-popup.min.js"></script> 
<script src="js/own-menu.js"></script> 
<script src="js/main.js"></script>

<script type="text/javascript" src="js/Ajax.js"></script>










<script>
 
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