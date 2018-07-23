<%--
  Created by IntelliJ IDEA.
  User: Wassim
  Date: 18/04/2017
  Time: 02:26
--%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
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
    <link href='../css/googlefont1.css' rel='stylesheet' type='text/css'>
    <link href='../css/googlefont2.css' rel='stylesheet' type='text/css'>

    <!--MAIN STYLE-->
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="../css/main.css" rel="stylesheet" type="text/css">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <link href="../css/animate.css" rel="stylesheet" type="text/css">
    <link href="../css/responsive.css" rel="stylesheet" type="text/css">
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css">

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

    if(idi!=0) {
        Connection con= null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ResultSet rsn=null;
        Statement stn=null;
        String url = "jdbc:mysql://localhost:3306/tablewise";
        String user = "root";
        String dbpsw = "toor";
        String sql = "select * from intervenant where IDident=?";
        

        try{

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(url, user, dbpsw);
            ps = con.prepareStatement(sql);
            ps.setInt(1, idi);
            rs= ps.executeQuery();
            rs.first();
            
// VERIFICATION TYPE NOTIF

stn=con.createStatement();
rsn = stn.executeQuery("select * from identifiant where ID="+idi+"");

rsn.first();



%>

<input type="hidden" id="IDtype" name="IDC" value="<%=rsn.getString("IDtype")%>" >    
<input type="hidden" id="IDcnt" name="IDC1" value="<%=idi%>" >    



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
                           <li class="tumblr" > <a  style="font-weight: bold;padding-right:60px;" href="Interv-Logout.jsp">Logout </a></li>

            </ul>
        </div>
    </div>




    <!--======= HEADER =========-->
    <header>
        <div class="container">

            <!--======= LOGO =========-->
            <div class="logo"> <a href="#."><img src="../images/logo1.png" alt="" ></a> </div>

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
      </div>s

            <!--======= NAV =========-->
            <nav>

                <!--======= MENU START =========-->
                <ul class="ownmenu">
                    <li><a href="../../index.jsp">Home</a>
                        
                    </li>
                 <li><a href="../../03-About.jsp">About Us </a></li>
         <li class=""><a href="../../04-Services.jsp">Services</a></li> 
         <li><a href="../../08-Gallery-Full-width.jsp">gALLERY</a></li>
         
          <li><a href="../../12-Contact-Page.jsp">Contact us</a></li>
          <li><a href="../../index.jsp">Pages</a> 
            
            <!--======= MEGA MENU =========-->
            <div class="megamenu full-width">
              <h6>All Pages</h6>
              <div class="row nav-post">
                <div class="col-sm-3 boder-da-r">
                  <ul>
                    <li><a href="../../index.jsp">Home</a></li>
                    
                    <li><a href="../../03-About.jsp">About</a></li>
                    <li><a href="../../04-Services.jsp">Services</a></li>
                                       
                  </ul>
                </div>
                <div class="col-sm-3">
                  <ul>
	                <li><a href="../../06-Services-Details.jsp">Services Details</a></li>
                   
                    <li><a href="../../08-Gallery-Full-width.jsp">Gallery Full Width</a></li>
                  
                    <li><a href="../../12-Contact-Page.jsp">Contact </a></li>
                  </ul>
                </div>
               
              </div>
            </div>
          </li>
                  <li style="float:right">
                        <a> <%=rs.getString("Prenom")%> <%=rs.getString("Nom")%> </a>
                    </li>
                                       <li class="dropdown" style="float:right;" >
       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span id="counter" class="label label-pill label-danger count" style="border-radius:10px;"></span> <span class="glyphicon glyphicon-envelope" style="font-size:18px;"></span></a>
         <ul id="err" class="dropdown-menu dropdown-messages dropdown-menu-right ">
                       
                      
                    </ul>
                </ul>

                <!--======= SUBMIT COUPON =========-->
                <div class="sub-nav-co"> <a href="#."><i class="fa fa-search"></i></a> </div>
            </nav>
        </div>
    </header>

         
    
<%
}

catch(SQLException sqe)
{
out.println(sqe);
}




}
else
response.sendRedirect("Error.jsp");





%>

    <!--======= BANNER =========-->
    <div class="sub-banner">
        <div class="container">
            <h1>Your Affectations</h1>
            <p class="exo">Contract Informations</p>
        </div>
        <ol class="breadcrumb">
            <li><a href="#">HandyMan </a></li>
            <li class="active"> Contracts</li>
        </ol>
        
    </div>

     
        

 <!--======= CONTRACT-INFORMATIONS =========-->
                
    <section class="call-us">
   <div class="call-inner">
      <div class="container"> 
                   
       <!--======= JSP-FONCTION AFFICHAGE INFORMATION =========-->
  <%

  
      // CONNEXION A LA BASE DE DONNEE
      Statement stn=null;
            Connection con= null;          
            PreparedStatement ps = null;
            ResultSet rs = null;
            String url = "jdbc:mysql://localhost:3306/tablewise";      
            String user = "root";
            String dbpsw = "toor";
            String sql = "select * from intervenant where IDident=?";

            try {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection(url, user, dbpsw);
                ps = con.prepareStatement(sql);
                stn=con.createStatement();
            
                 int cnt =  Integer.parseInt(request.getParameter("IDcontrat")); // ID du contrat séléctioné auparavant
                
                ///////// NOTIFICATION UPDATE
                    ResultSet rsn=stn.executeQuery("select * from notification where IDcontrat="+cnt+"");
                    rsn.first();
                    if(Integer.parseInt(rsn.getString("notif_status")) == 0) stn.executeUpdate("UPDATE notification set notif_status=1, Notif_Subject='CONTRAT (CONSULTE)' where IDcontrat="+cnt+"");
                /////////////
                
                ps.setInt(1, idi);
                rs= ps.executeQuery();            // Selection de l'intervenant ayant l'indentifiant(idi) de la table intervenant
                rs.first();


                Statement st1 = con.createStatement();
                Statement st2 = con.createStatement();

                ResultSet rs1 = st1.executeQuery("select * from contrat where IDcontrat="+cnt+" "); // selection du contrat(cnt) de la table contrat
                ResultSet rs2 = st2.executeQuery("select * from client c INNER JOIN contrat ct on ct.IDclient=c.IDclient where ct.IDcontrat="+cnt+" "); // Selection du client ayant signé ce contrat

                rs.beforeFirst();

                if(rs.next()) {

                    rs.first();
                    rs2.first();
                    rs1.first();
    %>

     <h1>CONTRACT N° : <%=rs1.getInt("IDcontrat")%> </h1> 
     <br>
     <a  class="posit"><img src="../images/contract.png"></a>
     <br>
     <br>
     <br>
                             
   
       <h1>Mr <%=rs.getString("Nom")%> <%=rs.getString("Prenom")%><br> </h1>
       <h3>Your are Assigned : <h3>     
       <br>
       <p> <span style="font-weight: 600;color:white; font-size:30px"> From &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>  <span style="font-weight: 600;color:#ffc300; font-size:30px"> <%=rs1.getDate("Datedebut")%> </span>  <span style="font-weight: 600;color:white; font-size:30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>  <span style="font-weight: 600;color:#ffc300; font-size:30px"> <%=rs1.getDate("Datefin")%> </span></p>
             
       <p> <span style="font-weight: 600;color:white; font-size:30px"> To Mr/Mme </span> <span style="font-weight: 600;color:#ffc300; font-size:30px"> <%=rs2.getString("Nom")%> <%=rs2.getString("Prenom")%> </span> <span style="font-weight: 600;color:white; font-size:30px">, Resident At :</span> <span style="font-weight: 600;color:#ffc300; font-size:30px"> <%=rs2.getString("adresse")%> </span> </p> 
       <p> <span style="font-weight: 600;color:white; font-size:30px"> Tel: </span> <span style="font-weight: 600;color:#ffc300; font-size:30px"> <%=rs2.getString("Tel")%> </span> </p>
       <p> <span style="font-weight: 600;color:white; font-size:30px"> EMAIl: </span> <span style="font-weight: 600;color:#ffc300; font-size:30px"> EMAIL: CLIENT@EXAMPLE.COM </span> </p>

    

        <%

         
                
            }  else response.sendRedirect("Admin-Aucun.jsp");

} catch (Exception e ) {
                out.println(e);
            }
  
        %>

                     
                                    
  
            </div>
        </div>
    </section>

   
    <!--======= FOOTER =========-->

            
                                               <!--=======  FOOTER -COMPTEUR Happyclient, Awards, Years =========-->
    <%

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
                <li class="col-sm-3"> <img class="img-responsive" src="../images/footer-img.png" alt="" > </li>

              
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
              <li><a href="../../03-About.jsp">About Us</a></li>
              <li><a href="../../08-Gallery-Full-width.jsp"> Our Staffs </a></li>                    
              <li><a href="../../06-Services-Details.jsp."> Pricing Details</a></li>
              <li><a href="../../12-Contact-Page.jsp"> Contact Us</a> </li>
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
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="../js/wow.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.stellar.js"></script>
<script src="../js/jquery.isotope.min.js"></script>
<script src="../js/jquery.flexslider-min.js"></script>
<script src="../js/counter1.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<script src="../js/jquery.sticky.js"></script>
<script src="../js/jquery.magnific-popup.min.js"></script>
<script src="../js/own-menu.js"></script>
<script src="../js/main.js"></script>
<script type="text/javascript" src="../js/datatables/jquerydatatables.js"></script>
<script type="text/javascript" src="../js/datatables/bootsrapmin.js"></script>


<script type="text/javascript">

    $(document).ready(function ($) {
        $('#lol').dataTable();
    });

</script>


<script type="text/javascript">
    function loadNotif1(view='')
    {
        
        var type=document.getElementById('IDtype');
        var idc=document.getElementById('IDcnt');
        var xmlhttp;
        var urls="load.jsp?view="+view+"&type="+type.value+"&idc="+idc.value+"";
       
        var s="err";

        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState===4)
            {

                document.getElementById(s).innerHTML=xmlhttp.responseText;
              

            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }</script>

  
   <script type="text/javascript">
  
  
  
    function loadNotif2()
    
 
    {
          
        var type=document.getElementById('IDtype');
        var idc=document.getElementById('IDcnt');
        var xmlhttp1;
        var urls1="load1.jsp?type="+type.value+"&idc="+idc.value;
        var s1;
    

        if (window.XMLHttpRequest)
        {
            xmlhttp1=new XMLHttpRequest();
        }
        else
        {
            xmlhttp1=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp1.onreadystatechange=function()
        {
            if (xmlhttp1.readyState===4)
            {
          
       s1= xmlhttp1.responseText;  
       if(s1.includes("zero")) { document.getElementById('counter').innerHTML="" ;}
       else { document.getElementById('counter').innerHTML=s1; }
              

            };
        };
        xmlhttp1.open("GET",urls1,true);
        xmlhttp1.send();


    }
   
   
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