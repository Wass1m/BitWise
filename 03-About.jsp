<%-- 
    Document   : 03-About
    Created on : 25 mai 2017, 14:08:22
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
      <h1>about us</h1>
      <p class="exo">Know more about us and what we do</p>
    </div>
    <ol class="breadcrumb">
      <li><a href="#">home </a></li>
      <li class="active"> About us</li>
    </ol>
  </div>
  
  <!--======= SERVICES =========-->
  <section class="services">
    <div class="container"> 
      
      <!--======= SERVICES ROW =========-->
      <ul class="row">
        
        <!--======= SERVICES =========-->
        <li class="col-md-4 padding-r-80">
          <div class="tittle">
            <h2 class="text-left">we fix all 
              your HandyMan
              problems</h2>
          </div>
          <p>Sedquis viverra enim. Vivamus aliquet rutrusm dui a varius. Mauris ornoare tortor in eleifends blanditullam ut legula et neque Praesent egset bibendum purus quis.</p>
          <a href="04-Services.jsp" class="btn">about more</a> </li>
        
        <!--======= SERVICES =========-->
        <li class="col-md-4">
          <div class="sec-in"> <i class="fa fa-clock-o"></i>
            <h6>24/7 Availability</h6>
            <p>Vivamus aliquet rutrusm dui a varius
              Mauris ornoare tortor. </p>
            <a href="#." class="go-right"><i class="fa fa-angle-right"></i></a> </div>
        </li>
        
        <!--======= SERVICES =========-->
        <li class="col-md-4">
          <div class="sec-in"> <i class="fa fa-user"></i>
            <h6>genius workers</h6>
            <p>Vivamus aliquet rutrusm dui a varius
              Mauris ornoare tortor. </p>
            <a href="#." class="go-right"><i class="fa fa-angle-right"></i></a> </div>
        </li>
        
        <!--======= SERVICES =========-->
        <li class="col-md-4">
          <div class="sec-in"> <i class="fa fa-usd"></i>
            <h6>low pricing</h6>
            <p>Vivamus aliquet rutrusm dui a varius
              Mauris ornoare tortor. </p>
            <a href="#." class="go-right"><i class="fa fa-angle-right"></i></a> </div>
        </li>
        
        <!--======= SERVICES =========-->
        <li class="col-md-4">
          <div class="sec-in"> <i class="fa fa-thumbs-o-up"></i>
            <h6>free estimation</h6>
            <p>Vivamus aliquet rutrusm dui a varius
              Mauris ornoare tortor. </p>
            <a href="#." class="go-right"><i class="fa fa-angle-right"></i></a> </div>
        </li>
      </ul>
    </div>
  </section>
  
  <!--======= WHO WE ARE =========-->
  <div class="who-we-are">
    <div class="container">
      <div class="row"> 
        
        <!--======= ARRORDING =========-->
        <div class="col-md-6"> 
          
          <!--======= TITTLE =========-->
          <div class="tittle">
            <h2>who we are</h2>
          </div>
          <div class="panel-group" id="accordion">
            <div class="panel panel-default"> 
              
              <!--======= PANEL HEADING =========-->
              <div class="panel-heading">
                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"> <span class="icon-accor"><i class="fa fa-gear"></i></span> awrds & recongnition</a> </h4>
              </div>
              
              <!--======= ADD INFO HERE =========-->
              <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                  <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur adipo sci velit, sed quia non numquam eius modi temora incidunt ut labore etum dolore tha magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quius nostrum sak exercitationem ullam corporis suscipit. </p>
                </div>
              </div>
            </div>
            
            <!--======= ACCORDING 2 =========-->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed"><span class="icon-accor"><i class="fa fa-bell"></i></span> our company history</a> </h4>
              </div>
              
              <!--======= ADD INFO HERE =========-->
              <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                  <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur adipo sci velit, sed quia non numquam eius modi temora incidunt ut labore etum dolore tha magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quius nostrum sak exercitationem ullam corporis suscipit. </p>
                </div>
              </div>
            </div>
            
            <!--======= ACCORDING 3 =========-->
            <div class="panel panel-default">
              <div class="panel-heading">
                <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed"><span class="icon-accor"><i class="fa fa-gear"></i></span>HandyMan  future plan</a> </h4>
              </div>
              
              <!--======= ADD INFO HERE =========-->
              <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                  <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur adipo sci velit, sed quia non numquam eius modi temora incidunt ut labore etum dolore tha magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quius nostrum sak exercitationem ullam corporis suscipit. </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <!--======= IMAGES =========-->
        <div class="col-md-6">
          <div class="testi">
            <div> <img class="img-responsive" src="images/about-img.jpg" alt="" > </div>
            <div> <img class="img-responsive" src="images/about-img-1.jpg" alt="" > </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!--======= GALLERY =========-->
  <section id="team">
    <div class="container"> 
      <!--======= TITTLE =========-->
      <div class="tittle">
        <h2>team members</h2>
      </div>
      <div class="row">
        <div class="col-md-6"> 
          
          <!--======= TEAM ROW =========-->
          <ul class="row">
            
            <!--======= TEAM =========-->
            <li class="col-sm-6">
              <div class="team"> <img class="img-responsive" src="images/team-1.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                  <h6>nissan waser</h6>
                  <p>HandyMan engineer</p>
                  
                  <!--======= SOCIAL ICON =========-->
                  <ul class="social_icons animated-6s fadeInUp">
                    <li class="facebook"><a href="#."><i class="fa fa-facebook"></i></a></li>
                    <li class="twitter"><a href="#."><i class="fa fa-twitter"></i></a></li>
                    <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i></a></li>
                    <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i></a></li>
                  </ul>
                </div>
              </div>
            </li>
            
            <!--======= TEAM =========-->
            <li class="col-sm-6">
              <div class="team"> <img class="img-responsive" src="images/team-2.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                  <h6>benjamin thomas</h6>
                  <p>HandyMan engineer</p>
                  
                  <!--======= SOCIAL ICON =========-->
                  <ul class="social_icons animated-6s fadeInUp">
                    <li class="facebook"><a href="#."><i class="fa fa-facebook"></i></a></li>
                    <li class="twitter"><a href="#."><i class="fa fa-twitter"></i></a></li>
                    <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i></a></li>
                    <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i></a></li>
                  </ul>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <div class="col-md-6"> 
          
          <!--======= TEAM ROW =========-->
          <ul class="row">
            
            <!--======= TEAM =========-->
            <li class="col-sm-6">
              <div class="team"> <img class="img-responsive" src="images/team-3.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                  <h6>isabella</h6>
                  <p>HandyMan engineer</p>
                  
                  <!--======= SOCIAL ICON =========-->
                  <ul class="social_icons animated-6s fadeInUp">
                    <li class="facebook"><a href="#."><i class="fa fa-facebook"></i></a></li>
                    <li class="twitter"><a href="#."><i class="fa fa-twitter"></i></a></li>
                    <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i></a></li>
                    <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i></a></li>
                  </ul>
                </div>
              </div>
            </li>
            
            <!--======= TEAM =========-->
            <li class="col-sm-6">
              <div class="team"> <img class="img-responsive" src="images/team-4.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                  <h6>alexander</h6>
                  <p>HandyMan engineer</p>
                  
                  <!--======= SOCIAL ICON =========-->
                  <ul class="social_icons animated-6s fadeInUp">
                    <li class="facebook"><a href="#."><i class="fa fa-facebook"></i></a></li>
                    <li class="twitter"><a href="#."><i class="fa fa-twitter"></i></a></li>
                    <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i></a></li>
                    <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i></a></li>
                  </ul>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  
  <!--======= CLIENTS FEEDBACK =========-->
  <section class="clients with-gray">
    <div class="container"> 
      
      <!--======= TITTLE =========-->
      <div class="tittle">
        <h2>feedback from clients</h2>
      </div>
      <ul class="row">
        
        <!--======= CLIENTS WORD =========-->
        <li class="col-md-4">
          <div class="avatar"> <img src="images/avatar-1.jpg" alt="" > </div>
          <div class="clients-in">
            <p>Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae qicknit vitae dicta sunt explicabo. </p>
            <h6>Jenny Nair -<span> Home Owner</span></h6>
          </div>
        </li>
        
        <!--======= CLIENTS WORD =========-->
        <li class="col-md-4">
          <div class="avatar"> <img src="images/avatar-2.jpg" alt="" > </div>
          <div class="clients-in">
            <p>Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae qicknit vitae dicta sunt explicabo. </p>
            <h6>Jenny Nair -<span> Home Owner</span></h6>
          </div>
        </li>
        
        <!--======= CLIENTS WORD =========-->
        <li class="col-md-4">
          <div class="avatar"> <img src="images/avatar-3.jpg" alt="" > </div>
          <div class="clients-in">
            <p>Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae qicknit vitae dicta sunt explicabo. </p>
            <h6>Jenny Nair -<span> Home Owner</span></h6>
          </div>
        </li>
      </ul>
    </div>
  </section>
  
  <!--======= CLIENTS FEEDBACK =========-->
  <section class="parthner">
    <div class="container"> 
      <!--======= TITTLE =========-->
      <div class="tittle">
        <h2>partners / clients</h2>
      </div>
      
      <!--======= PARTHNERS =========-->
      <div class="parthner-slide">
        <div class="part"> <a href="#."> <img src="images/parthner-img-1.png" alt="" > </a> </div>
        
        <!--======= PARTHNERS =========-->
        <div class="part"> <a href="#."> <img src="images/parthner-img-2.png" alt="" > </a> </div>
        
        <!--======= PARTHNERS =========-->
        <div class="part"> <a href="#."> <img src="images/parthner-img-3.png" alt="" > </a> </div>
        
        <!--======= PARTHNERS =========-->
        <div class="part"> <a href="#."> <img src="images/parthner-img-4.png" alt="" > </a> </div>
        
        <!--======= PARTHNERS =========-->
        <div class="part"> <a href="#."> <img src="images/parthner-img-5.png" alt="" > </a> </div>
        
        <!--======= PARTHNERS =========-->
        <div class="part"> <a href="#."> <img src="images/parthner-img-3.png" alt="" > </a> </div>
        
        <!--======= PARTHNERS =========-->
        <div class="part"> <a href="#."> <img src="images/parthner-img-4.png" alt="" > </a> </div>
        
        <!--======= PARTHNERS =========-->
        <div class="part"> <a href="#."> <img src="images/parthner-img-5.png" alt="" > </a> </div>
      </div>
    </div>
  </section>
    <!--======= MAP =========-->
      <div id="map"></div>
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



<script src="js/mapmarker.js"></script> 
<!--  this is the script for the map  -->
<script type='text/javascript' src='http://maps.google.com/maps/api/js?key=AIzaSyDUeK8quy0MNx19egUWiROVlsztLgTwbT0&sensor=false'></script> 
<!-- begin map script--> 
<script type="text/javascript">
// Use below link if you want to get latitude & longitude
// http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude.php 
$(document).ready(function(){
//set up markers 
var myMarkers = {"markers": [{
		
	"latitude": "35.20824894988331",
	"longitude":"-0.6333446502685547",
	
	"icon": "images/map-locator.png", 
	"baloon_text": 'BitWise Inc'
}]};
	
//set up map options
$("#map").mapmarker({
  zoom  : 15,
  center  : 'Ecole Supérieure en informatique 08 Mai 1945 sidi bel abbess ' ,
  markers : myMarkers
  });
});
</script>






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