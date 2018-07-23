<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"> 
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8 ; IE=7;IE=EDGE"/>
        
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Handyan - Handy Man, Plumber HTML Template</title>
<meta name="keywords" content="HTML5,CSS3,HTML,Template,Multi-Purpose,M_Adnan,Corporate Theme,HandyMan - Handy Man, Plumber HTML Template" >
<meta name="description" content="HandyMan - Handy Man, Plumber HTML Template">
<meta name="author" content="M_Adnan">

<!-- FONTS ONLINE -->

<link href='http://fonts.googleapis.com/css?family=Exo+2:700,600,200,800,300,400,500,100,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>

<!--MAIN STYLE-->
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/animate.css" rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
<%@page import="java.sql.*"%>
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
          <li class="active"><a href="index.jsp">Home</a>
            
          </li>
          <li><a href="03-About.jsp">About Us </a></li>
          <div><li class=""><a href="04-Services.jsp">Services</a>
          		<form action="DropDown.jsp"> </form></li> </div>
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
                    <% }  %>
                    
              
              
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

} else {
%>     
          <li><a href="#" data-toggle="modal" data-target="#myModal" id="have_it">Log In</a>  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Log In</h4>
        </div>
        <div class="modal-body">
            <form action="./login.jsp">
                <div class="form-group">
                    <input type="text" name="user" id="use" class="form-control input-sm" placeholder="Username or Email" required>
                    </div>
                <input type="password" name="password" id="pass" class="form-control input-sm" placeholder="password" required>
                
              <input type="submit" value="Submit" class="btn btn-info btn-block ">
            </form>
        </div>
        <div class="modal-footer">
          <a href="RequestCode.jsp" ><p>Forgot Password ?</p> </a> 
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div></li>
<%    
  } 
%>    
        </ul>
        
        <!--======= SUBMIT COUPON =========-->
        <div class="sub-nav-co"> <a href="#."><i class="fa fa-search"></i></a> </div>
      </nav>
    </div>
  </header>
  
  <!--======= BANNER =========-->
  <div id="banner" style="width:auto; height:auto;">
    <div class="flex-banner">
      <ul class="slides">
           <%
             
          if(idi==0)  { %>
        <li> <img src="images/slide-1.jpg" alt="" > 
          
          <!--======= BANNER INNER =========-->
          <div class="banner-up"  >
            <div class="container">
              <div class="row" >
                <div class="col-sm-5" > 
                  
                  <!--======= BANNER FORM =========-->
                  <div class="bnr-form">
                    <h3>Creat An Account here </h3>
                    <h6>24 housrs service available!</h6>
                    <!--<div id="banner_message" class="success-msg"> <i class="fa fa-paper-plane-o"></i>Thank You. Your Message has been Submitted</div>-->
                  <!--=============Subscribing Form======--> 
                  <form role="form"  action="inscription.jsp" > 
                <div class="row">
                  <div class=" col-sm-6 ">
                    <div class="form-group">
                      <input type="text" name="nom" id="nom" class="form-control input-sm" placeholder="Nom" required pattern="[a-zA-Z\s]+" maxlength="20" title="No Numbers Or Special Charecters are accepted">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <input type="text" name="prenom" id="full_name" class="form-control input-sm" placeholder="Prenom" pattern="[a-zA-Z\s]+" maxlength="20" title="No Numbers Or Special Charecters are accepted">
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-6">
                    <div class="form-group">
                        <input type="text" name="adresse" id="adresse" class="form-control input-sm" placeholder="Adresse" required pattern="[a-zA-Z0-9\s]+" maxlength="100" title="No special charecters are accepted ">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                        <input type="tel" name="tel" id="tel" class="form-control input-sm" placeholder="telephone" required pattern="[0-9]*" maxlength="14" title="Special characters are not allowed" onkeyup="loadXMLDoc1()">
                    </div>
                  </div>
                </div>

                <div class="form-group">
                    <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address" required onChange="loadXMLDocID()" maxlength="40" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$"> 
                </div>

                <div class="row">
                     <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="form-group  has-feedback">
                        <input type="text" name="user_name" id="user_name" class="form-control input-sm" placeholder="Username" required onChange="loadXMLDocID()" maxlength="15" pattern="[a-zA-Z0-9\s]+" title="No Special Charecters are allowed">
                          
                       
                    </div>
                         
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required onkeyup="checkPass(); return false;" minlength="6">
                    </div>
                  </div>
                   <div class=" col-sm-6 ">
                    <div class="form-group">
                      <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="'Password Confirmation" onkeyup="checkPass(); return false;">
                         <span id="confirmMessage" class="confirmMessage"></span>
                    </div>
                  </div>
                    
                    <div class=" col-sm-6 ">
                    <div class="form-group">
                      <input type="text" name="localisation" id="localisation" class="form-control input-sm" placeholder="'Localisation" maxlength="20" pattern="[a-zA-Z0-9\s]*" title="Pas de carectere speciaux">
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6">
                      <div class="form-group">
                      <select name="type" style="background-color: yellow; color:Black;">
                       <option  style="background-color: white; color:Black;" value="Individual">Individual</option>
                        <option style="background-color: white; color:Black;" value="Entreprise">Entreprise</option>
                    </select>
                      </div>
                  </div>
                </div>
                        <div class="row">
					
							
							
						</div>
						<div class="row">
					
						</div>
                     <div class="col-sm-12">
                <div class="col-sm-6">
                <input type="submit" id='mySubmit' value="Register" class="btn btn-info btn-block ">
                
                </div>  
                <div class="col-sm-6">
                    <span id="errj"> </span>
                    <span id="err3"> </span>
                </div>  
                  </div>
                         
              </form>
                   <!--=============End Of Subscribing Form ======--> 
                  </div>
                </div>
                
                <!--======= BANNER IMAGES =========-->
                <div class="col-sm-7">
                  <section> <img class="img-responsive pull-right" src="images/slide-img-1.png" alt=""> </section>
                </div>
              </div>
            </div>
          </div>
        </li>
        <% } %>
        <li> <img src="images/slide-2.jpg" alt="" > 
          
          <!--======= BANNER INNER =========-->
          <div class="banner-up">
            <div class="container">
              <div class="row">
                <div class="col-sm-5">
                  <section> <img class="img-responsive pull-left" src="images/slide-img-2.png" alt=""> </section>
                </div>
                <div class="col-sm-7">
                  <div class="text-sec">
                    <section>
                        <h1>Always At Your Service</h1>
                      <h1>just call <span>+213 48 74 94 5</span></h1>
                    </section>
                      <% if(idi==0)  { %>
                    <section>
                      <h1>You already Have An account ? </h1>
                    </section>
                    <a href="03-About.html" class="btn btn-1">About</a><a href="#" class="btn btn-2" data-toggle="modal" data-target="#myModal" id="have_it" >Log In</a> </div> <% } %>
                </div>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
  
  <!--======= SERVICES =========-->
  <section class="services sec-2">
    <div class="container"> 
      
      <!--======= SERVICES ROW =========-->
      
      <div class="row">
        <div class="col-md-4">
          <ul class="row">
            
            <!--======= SERVICES =========-->
            <li class="padding-r-80 col-md-12">
              <div class="tittle">
                <h2 class="text-left">we give<br>
                  our best service <br>
                  for you</h2>
              </div>
              <p>We are the best in our field since we have been the leader for more than 25 years.</p>
              <a href="04-Services.jsp" class="btn">view more service</a> </li>
          </ul>
        </div>
        <div class="col-md-8">
          <ul class="row">
            
            <!--======= SERVICES =========-->
            <li class="col-md-4">
              <div class="sec-in"> <i><img src="images/icon-1.png" alt=""></i>
                <h6>faucet repair</h6>
              </div>
            </li>
            
            <!--======= SERVICES =========-->
            <li class="col-md-4">
              <div class="sec-in"> <i><img src="images/icon-2.png" alt=""></i>
                <h6>sinks installation</h6>
              </div>
            </li>
            
            <!--======= SERVICES =========-->
            <li class="col-md-4">
              <div class="sec-in"> <i><img src="images/icon-3.png" alt=""></i>
                <h6>HandyMan repairs</h6>
              </div>
            </li>
            
            <!--======= SERVICES =========-->
            <li class="col-md-4">
              <div class="sec-in"> <i><img src="images/icon-4.png" alt=""></i>
                <h6>shower installation</h6>
              </div>
            </li>
            
            <!--======= SERVICES =========-->
            <li class="col-md-4">
              <div class="sec-in"> <i><img src="images/icon-5.png" alt=""></i>
                <h6>gas lines</h6>
              </div>
            </li>
            
            <!--======= SERVICES =========-->
            <li class="col-md-4">
              <div class="sec-in"> <i><img src="images/icon-6.png" alt=""></i>
                <h6>water filteration</h6>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
  
  <!--======= SOLUCTION =========-->
  <section class="solution">
    <div class="container">
      <div class="row">
        <div class="col-sm-4"><img class="img-responsive" src="images/soluction-img.png" alt="" ></div>
        <div class="col-sm-8 text-center">
          <h3>just click! on time solutions for all your HandyMan needs</h3>
          <p class="exo text-uppercase">definitly this will help to grow your business </p>
          <a href="12-Contact-Page.jsp" class="btn">conatct Us</a> </div>
        
      </div>
    </div>
  </section>
  
  <!--======= OFFER SERVICES =========-->
  <section class="offer-services resons-tabs">
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div class="row"> 
            
            <!--======= TABS SECTION =========-->
            <div class="col-sm-5"> 
              
              <!--======= TITTLE =========-->
              <div class="tittle">
                <h2>5 resons to work with us</h2>
              </div>
              <div role="tabpanel"> 
                <!--======= NAV TABS =========-->
                <ul class="nav nav-tabs" role="tablist">
                  <li role="presentation" class="active"><a href="#24-avai"  role="tab" data-toggle="tab">01  24/7 availability <i class="animated bounceInLeft fa fa-angle-double-right"></i></a></li>
                  <li role="presentation"><a href="#quaility"  role="tab" data-toggle="tab">02  quality work <i class="animated bounceInLeft fa fa-angle-double-right"></i></a></li>
                  <li role="presentation"><a href="#genius" role="tab" data-toggle="tab">03  genius workers <i class="animated bounceInLeft fa fa-angle-double-right"></i></a></li>
                  <li role="presentation"><a href="#low-cost" role="tab" data-toggle="tab">04  low cost <i class="animated bounceInLeft fa fa-angle-double-right"></i></a></li>
                  <li role="presentation"><a href="#life-supp" role="tab" data-toggle="tab">05  life time support <i class="animated bounceInLeft fa fa-angle-double-right"></i></a></li>
                </ul>
              </div>
            </div>
            
            <!--======= NAV TABS CONTENT =========-->
            <div class="col-sm-7">
              <div class="tab-content"> 
                
                <!--======= HandyMan Repairs =========-->
                <div role="tabpanel" class="tab-pane animated fadeInRight active" id="24-avai"> <i class="fa fa-users"></i>
                  <h2>24/7 availability</h2>
                  <p>We are available and ready to serve you 24/7 , 365 a year , just tell us what you need and we'll be there for you</p>
                  <a href="03-About.jsp" class="btn">LEARN MORE</a> </div>
                
                <!--======= HandyMan Repairs =========-->
                <div role="tabpanel" class="tab-pane animated fadeInRight" id="quaility"> <i class="fa fa-users"></i>
                  <h2>quality work</h2>
                  <p>We strive for perfection and  we guarentee a high quality performance</p>
                  <a href="03-About.jsp" class="btn">LEARN MORE</a> </div>
                
                <!--======= GAS LINES =========-->
                <div role="tabpanel" class="tab-pane animated fadeInRight" id="genius"> <i class="fa fa-users"></i>
                  <h2>genius workers</h2>
                  <p>Our workers are the best in their field </p>
                  <a href="03-About.jsp" class="btn">LEARN MORE</a></div>
                
                <!--======= SEWER LINES =========-->
                <div role="tabpanel" class="tab-pane animated fadeInRight" id="low-cost"> <i class="fa fa-users"></i>
                  <h2>low cost</h2>
                  <p>What makes us unique is that we have the lowest prices compared to any other competitor .</p>
                  <a href="03-About.jsp" class="btn">LEARN MORE</a></div>
                
                <!--======= WATER DAMAGE PREVENTION =========-->
                <div role="tabpanel" class="tab-pane animated fadeInRight" id="life-supp"> <i class="fa fa-users"></i>
                  <h2>life time support</h2>
                  <p>We provide the best customer support for a lifetime ! </p>
                  <a href="03-About.jsp" class="btn">LEARN MORE</a></div>
              </div>
            </div>
          </div>
        </div>
        
        <!--======= clients feed back =========-->
        <div class="col-md-4">
          <section class="testi-small"> 
            
            <!--======= TITTLE =========-->
            <div class="tittle">
              <h2>clients<br>
                feed back</h2>
            </div>
            
            <!--======= TESTI SLIDER =========-->
            <div class="testi"> 
              <%
                     try{ 
                         String SQL = "SELECT * FROM client where ( not avis like '%new%' AND not avis like '%DISAPPROVED%')  ORDER BY RAND() LIMIT 3";

                         Class.forName("com.mysql.jdbc.Driver");
                         String s="";
                   int i=0;
                         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tablewise","root","toor");
                         Statement st =con.createStatement();
                         String aff ="";
                         ResultSet rs = st.executeQuery(SQL);
                         while(rs.next()){
                             i++;
                         s= rs.getString("avis");
                         
                          aff =rs.getString("Prenom")+" "+rs.getString("Nom");
                        
                      %>  
              <!--======= SLIDE 1 =========-->
              <div class="testi-text">
               
                  <div class="avatar"> <img src="images/Client<%=i%>.jpg" alt=""> </div>
                 
                            <p><%=s%></p>
                             <h6>- <%=aff%></h6>
  
              
              </div>
               
    <%                     
                     
} 

}
catch(Exception ex){
                         out.print(ex);
                     }
              %>
             
              
              
              
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>
  
  <!--======= GALLERY =========-->
  <section class="gallery">
    <div class="container"> 
      <!--======= TITTLE =========-->
      <div class="tittle">
        <h2>our works gallery</h2>
      </div>
    </div>
    <div class="container"> 
      <!--======= GALLERY SLIDER =========-->
      <div class="gallery-slide-3"> 
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-1.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-2.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-3.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-4.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-5.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-2.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-1.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
        
        <!--======= GALLERY ITEMS =========-->
        <div class="gal-item"> 
          
          <!--======= GALLERY IMAGE =========--> 
          <img src="images/gallery-img-3.jpg" alt=""> 
          
          <!--======= GALLERY HOVER =========-->
          <div class="gallery-over"> <a href="#pop-project" class="link-up link popup-vedio animated-6s fadeInLeftBig"><i class="fa fa-long-arrow-right"></i></a>
            <div class="items-text animated fadeInRightBig">
              <p>repair / fixing</p>
              <h5>tankless water heater</h5>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <!--======= POPUP PROJECTS =========-->
  <div id="pop-project" class="zoom-anim-dialog mfp-hide pop-project">
    <div class="pop_up">
      <div class="row">
        <div class="col-sm-10">
          <div id="carousel-img" class="carousel slide" data-ride="carousel"> 
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
              <div class="item active"> <img src="images/pop-img-1.jpg" alt=""> </div>
              <div class="item"> <img src="images/pop-img-1.jpg" alt=""> </div>
              <div class="item"> <img src="images/pop-img-1.jpg" alt=""> </div>
              <div class="item"> <img src="images/pop-img-1.jpg" alt=""> </div>
            </div>
          </div>
        </div>
        <div class="col-sm-2">
          <ol class="carousel-indicators">
            <li data-target="#carousel-img" data-slide-to="0" class="active"><img class="img-responsive" src="images/detail-img-1.jpg" alt=""></li>
            <li data-target="#carousel-img" data-slide-to="1"> <img class="img-responsive" src="images/detail-img-2.jpg" alt="" ></li>
            <li data-target="#carousel-img" data-slide-to="2"><img class="img-responsive" src="images/detail-img-3.jpg" alt="" ></li>
            <li data-target="#carousel-img" data-slide-to="2"><img class="img-responsive" src="images/detail-img-2.jpg" alt="" ></li>
          </ol>
        </div>
        
        <!--======= POPUP PROJECTS DETAILS =========-->
        <div class="projects-details">
          <div class="col-sm-8">
            <h3>sewer line Replacement</h3>
            <p>We provide you with our best workers to execute difficult tasks </p>
          </div>
          <div class="col-sm-4">
            <ul>
              <li>
                <p><span>date :</span> Mar 18, 2015</p>
              </li>
              <li>
                <p><span>Client : </span>ven diesel home</p>
              </li>
              <li>
                <p><span>work: </span> gas & Sewer Line Replacement</p>
              </li>
            </ul>
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
        <div class="col-md-4"> 
          
          <!--======= TEAM ROW =========-->
          <ul class="row">
            
            <!--======= TEAM =========-->
            <li class="col-sm-6">
              <div class="team"> <img class="img-responsive" src="images/ahmed.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                  <h6>DERKAOUI Ahmed</h6>
                  <p>Project Coordinator</p>
                  
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
              <div class="team"> <img class="img-responsive" src="images/wassim.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                  <h6>Ghernaout Mohamed Wassim</h6>
                  <p>BITWISE engineer</p>
                  
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
          
        <div class="col-md-4"> 
          
          <!--======= TEAM ROW =========-->
          <ul class="row">
            
            <!--======= TEAM =========-->
            <li class="col-sm-6">
              <div class="team"> <img class="img-responsive" src="images/team-3.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                  <h6>Ali Ahmed Kahina</h6>
                  <p>BITWISE Engineer</p>
                  
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
                 <h6>Aksa Djemai</h6>
                  <p>BITWISE Engineer</p>
                  
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
          <div class="col-md-4"> 
          
          <!--======= TEAM ROW =========-->
          <ul class="row">
            
            <!--======= TEAM =========-->
            <li class="col-sm-6">
              <div class="team"> <img class="img-responsive" src="images/team-3.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                   <h6>Rafaa Houria</h6>
                  <p>BITWISE Engineer</p>
                  
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
              <div class="team"> <img class="img-responsive" src="images/team-3.jpg" alt="" > <a class="team-over" href="#."></a> 
                
                <!--======= TEAM DETAILS =========-->
                <div class="team-detail">
                   <h6>Bouzoul Ferial</h6>
                  <p>BITWISE Engineer</p>
                  
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
  
 
    <!--======= FOOTER =========-->

    <%
            // RECUPERATION DES CARACTERISTIQUES DE L'ENTREPRISE (AWARDS ETCC) à AFFICHER

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
              <li><a href="03-About.jsp">About Us</a></li>
              <li><a href="08-Gallery-Full-width.jsp"> Our Staffs </a></li>                    
              <li><a href="06-Services-Details.jsp."> Pricing Details</a></li>
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
    
 





   
    
<script src="js/password.js" ></script>
<script src="js/check.js"></script>
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