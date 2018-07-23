<%--
  Created by IntelliJ IDEA.
  User: Wassim
  Date: 18/04/2017
  Time: 02:26
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.text.SimpleDateFormat"%>
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
      </div>
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
            <h1>YOUR AFFECTATIONS</h1>
            <p class="exo">You Will find Here your affectations planning</p>
        </div>
        <ol class="breadcrumb">
            <li><a href="#">home </a></li>
            <li class="active"> Planning</li>
        </ol>
        
    </div>

     
        


                
    <section class="call-us">
   <div class="call-inner">
      <div class="container"> 
          <div></div>              
      <table id="lol" class="table table-striped table-bordered  table-hover table-inverse" cellspacing="0" width="100%" style="background-color: white;">
        <thead>
        <tr>
            <th>Contract ID</th>
            <th>Beginning Date</th>
            <th>End Date</th>
            <th>Client IDt</th>   
              <th>State</th>
            <th style="text-align:center; font-size:medium; ">OPERATION</th>

        </tr>
        </thead>
        <tfoot>
        <tr>
            <  <th>Contract ID</th>
            <th>Beginning Date</th>
            <th>End Date</th>
            <th>Client IDt</th>   
              <th>State</th>
            <th style="text-align:center; font-size:medium; ">OPERATION</th>

        </tr>
        </tfoot>
        <tbody>
        <%
            
            
        
   
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
                ps.setInt(1, idi);
                rs= ps.executeQuery();
                rs.first();

                int cnt = rs.getInt("IDintervenant");
            

                
                Statement st1 = con.createStatement();           
               
               ResultSet rs1 = st1.executeQuery("select c.*,cl.* from contrat c INNER JOIN client cl on cl.IDclient=c.IDclient INNER JOIN Planning pl on pl.IDcontrat=c.IDcontrat INNER JOIN Intervenant i on i.IDintervenant=pl.IDintervenant Where i.IDintervenant='"+cnt+"' group by c.datedebut ");
               
               if(rs1.next()) {
                rs1.beforeFirst();
                while(rs1.next()){

        %>

     
        <tr>
            <td><%=rs1.getString("IDContrat")%></td>
            <td><%=rs1.getString("Datedebut")%></td>
            <td><%=rs1.getString("Datefin")%></td>
            <td><%=rs1.getString("IDclient")%></td> 
            <%    
                  // COMPARAISON AVEC LA DATE ACTUELLE POUR MONTRER L'AFFECTATION ACTUELLE DU CLIENT
                  
                SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
    
        Date today = new Date();
        Date date1=rs1.getDate("Datedebut");
        Date date2=rs1.getDate("Datefin");
        if(today.compareTo(date1)>=0 && today.compareTo(date2)<=0 ) {


  %>       
        <td style="color:green; font-size: 20px;font-weight: bold">AFFECTED</td> 
          <%} else {%>
            <td style="font-weight: bold" >WAITING</td> 
           <%} %>
            <td> <button type="button" class="btn btn-sm btn-default demo2" onclick='window.open("Intervenant-InfoContrat.jsp?IDcontrat=<%=rs1.getString("IDcontrat")%>");'>MORE INFO</button></td>

        </tr>




        <%

         }
                
            } // else response.sendRedirect("Admin-Aucun.jsp");

} catch (Exception e ) {
                out.println(e);
            }
  
        %>

        </tbody>
    </table>
                                
                                
                                    
  
            </div>
        </div>
    </section>

   
    <!--======= FOOTER =========-->

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