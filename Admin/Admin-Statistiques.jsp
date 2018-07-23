 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="fusioncharts.FusionCharts" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="com.google.gson.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.String" %>
<%@ page import="org.jfree.chart.*" %>
<%@ page import="org.jfree.chart.plot.*"%>
<%@ page import="org.jfree.data.jdbc.*"%>
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
<script src="scripts/fusioncharts.js"></script>
<script type="text/javascript" src="scripts/themes/fusioncharts.theme.zune.js"></script>
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
                 <li class="tumblr" > <a  style="font-weight: bold;padding-right:60px;" href="#.">Logout </a></li>
            </ul>
        </div>
    </div>
    
    <!-- LOGIN ID GET-ATTRIBUTE FUNCTION -->
    <%

    int idi;
    if (session.getAttribute("ID") != null) {
        idi = ((Integer) session.getAttribute("ID")).intValue(); } else { idi = 0; } // RECUPERATION DE L'ID EN COURS

    
        Connection coni= null;
        PreparedStatement ps = null;
       
        Statement sti=null; 
        ResultSet rsi =null;
        String url = "jdbc:mysql://localhost:3306/tablewise";  // PREPARATION DES STATEMENTS
        String user = "root";
        String dbpsw = "toor";
        String sqll = "select * from identifiant where ID=?";

        try {

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            coni = DriverManager.getConnection(url, user, dbpsw);
            ps = coni.prepareStatement(sqll);                                        // CONNEXION BASE DE DONNEES

            ps.setInt(1, idi);
            rsi= ps.executeQuery();
            rsi.first();
                                                            // PUIS AFFICHAGES DES INFORMATIONS TROUVE DANS LA PAGE


                      



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
       <ul id="err" class="dropdown-menu dropdown-messages dropdown-menu-right scrollable-menu ">
                       
                      
                    </ul>
               
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
            <p class="exo">Satistics</p>
        </div>
        <ol class="breadcrumb">
            <li><a href="#">Admin </a></li>
            <li class="active"> Statistics</li>
        </ol>
    </div>

    <!--======= BLOG =========-->
    <section class="blog">
        <div class="container">
            <ul class="row">
                <li class="col-sm-8">

                    <!--======= BLOG POST=========-->
                    <div class="blog-post"> <img class="img-responsive" src="images/chart.jpg" alt="" > <span class="date"><i class="fa fa-clock-o"></i> <%= new Date() %></span> <a class="title-hed">know more about your entreprise</a>

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
                             <li><a href="Admin-Statistiques.jsp">Statistics</a></li>

                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </section>
 <section style="background-image: url(images/chartwal2.jpg);" >
    
    <div class="call-inner">
      <div class="container">
          
<%
    
/* 
    The following 4 code lines contain the database connection information.
    Alternatively, you can move these code lines to a separate file and
    include the file here. You can also modify this code based on your 
    database connection. 
 */

   String hostdb = "localhost:3306";  // MySQl host
   String userdb = "root";  // MySQL username
   String passdb = "toor";  // MySQL password
   String namedb = "tablewise";  // MySQL database name

    // Establish a connection to the database
    DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    Connection con = DriverManager.getConnection("jdbc:mysql://" + hostdb + "/" + namedb , userdb , passdb);
    
   
    %>
    

        
     <h1 style="float:left;color:white;">GRAPHIQUE  REPRESENTANT LES QUALIFICATIONS LES PLUS DEMANDEES</h1> 
     
     <br>
       <br>
         <br>
           <br>
             <br>
    <div  id="chart2"> </div>
    <br>
    <br>
    <br>
    <br>
  
     <h1 style="float:left;color:white;">GRAPHIQUE REPRESENTANT LES REVENUS MENSUELS DE L'ENTREPRISE</h1> 
  
    <br>
       <br>
         <br>
           <br>
             <br>
     <div id="chart3" style="margin-left:300px"></div>
    <br>
    <br>
    <br>
    <br>
     <br>
    
     <h1 style="float:left;color:white;font-weight: bold;">GRAPHIQUE  REPRESENTANT LE TAUX D'ACITIVTE DES CONTRAT PAR MOIS</h1> 
    
    <br>
       <br>
         <br>
           <br>
             <br>
     <div id="chart7" style="margin-right:600px;margin-bottom:20px"></div>
    
    <%
         /*
            google-gson
    
            Gson is a Java library that can be used to convert Java Objects into 
            their JSON representation. It can also be used to convert a JSON string to 
            an equivalent Java object. Gson can work with arbitrary Java objects including
            pre-existing objects that you do not have source-code of.
            link : https://github.com/google/gson    
         */
    
            Gson gson = new Gson();
            // DONNES SQL
            String debut;
            String fin;
            String sem;
            // RECUPERATION DE L'ANNEE ACTUELLE
            Calendar now = Calendar.getInstance();
            int year = now.get(Calendar.YEAR);
            int yearm = now.get(Calendar.YEAR) -1 ;
            String years = String.valueOf(year);
            String yearsm = String.valueOf(yearm);
            // COMPARAISON AVEC le solstice d'été 
            SimpleDateFormat df=new SimpleDateFormat("dd-MM-yyyy");
            Date date1 = df.parse("21-06-"+years+"");
            Date today = new Date();
            // DEFINITION DES DEBUT FIN DE SEMESTRES POUR LA REQUETE SQL
            
            if(today.compareTo(date1)<0) { debut=""+yearsm+"-12-21"; fin=""+years+"-06-20"; sem="1er";} else
            { debut=""+years+"-06-21"; fin=""+years+"-12-21"; sem="2eme";}
          
            // Form the SQL query that returns the top 10 most populous countries
            String sql="SELECT NomQualif,COUNT(*) as count FROM qualifneeded q, contrat t where q.IDcontrat = t.IDcontrat and t.Datedebut >='"+debut+"' and t.Datedebut <='"+fin+"' GROUP BY NomQualif ORDER BY count DESC;";

            // Execute the query.
            PreparedStatement pt=con.prepareStatement(sql);    
            ResultSet rs=pt.executeQuery();
            
            // The 'chartobj' map object holds the chart attributes and data.
            Map<String, String> chartobj = new HashMap<String, String>();
            
            chartobj.put("caption" , "QUALIFICATION A LA DEMANDE");
      
                 chartobj.put("subCaption", ""+sem+" semestre");
                 chartobj.put("paletteColors", "#0075c2");
                 chartobj.put("lineColor", "#1aaf5d");
                 chartobj.put("xAxisName", "Qualification");
                 chartobj.put("pYAxisName", "Demande");
                 chartobj.put("sYAxisname", "Cumulative Percentage");
                 chartobj.put("bgColor", "#ffffff");
                 chartobj.put("borderAlpha", "20");
                 chartobj.put("showCanvasBorder", "0");
                 chartobj.put("showHoverEffect", "1");
                 chartobj.put("usePlotGradientColor", "0");
                 chartobj.put("plotBorderAlpha", "10");
                 chartobj.put("showValues", "0");               
                 chartobj.put("showXAxisLine", "1");
                  chartobj.put("xAxisnameFontSize","14");
                 chartobj.put("yAxisnameFontSize","14");
                 chartobj.put("xAxisLineColor", "#999999");
                 chartobj.put("divlineColor", "#999999");               
                 chartobj.put("divLineIsDashed", "1");
                 chartobj.put("showAlternateHGridColor", "0");
                chartobj.put( "subcaptionFontBold", "0");
                 chartobj.put("subcaptionFontSize", "14");                

 
            // Push the data into the array using map object.
            ArrayList arrData = new ArrayList();
            while(rs.next())
            {
                Map<String, String> lv = new HashMap<String, String>();
                lv.put("label", rs.getString("NomQualif"));
                lv.put("value", rs.getString("count"));
                arrData.add(lv);             
            }
            
            //close the connection.
            rs.close();
 
            //create 'dataMap' map object to make a complete FC datasource.
             Map<String, String> dataMap = new LinkedHashMap<String, String>();  
        /*
            gson.toJson() the data to retrieve the string containing the
            JSON representation of the data in the array.
        */
             dataMap.put("chart", gson.toJson(chartobj));
             dataMap.put("data", gson.toJson(arrData));

            FusionCharts columnChart= new FusionCharts(
            "pareto2d",// chartType
                        "chart1",// chartId
                        "800","500",// chartWidth, chartHeight
                        "chart2",// chartContainer
                        "json",// dataFormat
                        gson.toJson(dataMap) //dataSource
                    );
           
            %>
    
    <%=columnChart.render()%>
    
    
    <%
         /*
            google-gson
    
            Gson is a Java library that can be used to convert Java Objects into 
            their JSON representation. It can also be used to convert a JSON string to 
            an equivalent Java object. Gson can work with arbitrary Java objects including
            pre-existing objects that you do not have source-code of.
            link : https://github.com/google/gson    
         */
    
            Gson gson1 = new Gson();
            
            
            // Form the SQL query that returns the top 10 most populous countries
            String sql1="select year(datedebut) as y, DATE_FORMAT(datedebut,'%M') as m, sum(facture) as p from contrat group by year(datedebut), month(datedebut)";
         
            // Execute the query.
            PreparedStatement pt1=con.prepareStatement(sql1);    
            ResultSet rs1=pt1.executeQuery();
            
            // The 'chartobj' map object holds the chart attributes and data.
            Map<String, String> chartobj1 = new HashMap<String, String>();
            
            chartobj1.put("caption" , "Revenue Mensuelle de lannée");
      
                
                chartobj1.put("subCaption", "2016/2017");
                 chartobj1.put("xAxisname", "Month");
                 chartobj1.put("yAxisName", "Amount (In DZD)");
                
                 chartobj1.put("numVisiblePlot" , "12");
                
                //Cosmetics
                 chartobj1.put("paletteColors" , "#0075c2");
                 chartobj1.put("baseFontColor" , "#333333");
                 chartobj1.put("baseFont" , "Helvetica Neue,Arial");
                 chartobj1.put("captionFontSize" , "14");
                 chartobj1.put("subcaptionFontSize" , "14");
                 chartobj1.put("subcaptionFontBold" , "0");
                 chartobj1.put("showBorder" , "0");
                 chartobj1.put("bgColor" , "#ffffff");
                 chartobj1.put("showShadow" , "0");
                chartobj1.put ("canvasBgColor" , "#ffffff");
                chartobj1.put("canvasBorderAlpha" , "0");
                chartobj1.put("showValues" , "0");
                chartobj1.put ("divlineAlpha" , "100");
                chartobj1.put("divlineColor" , "#999999");
                chartobj1.put("divlineThickness" , "1");
                chartobj1.put ("divLineIsDashed" , "1");
                chartobj1.put ("divLineDashLen" , "1");
                chartobj1.put ("divLineGapLen" , "1");
                chartobj1.put ("usePlotGradientColor" , "0");
                chartobj1.put ("showplotborder" , "0");
                chartobj1.put ("showXAxisLine" , "1");
                chartobj1.put ("xAxisLineThickness" , "1");
                 chartobj1.put("xAxisnameFontSize","14");
                 chartobj1.put("yAxisnameFontSize","14");
                chartobj1.put ("xAxisLineColor" , "#999999");
                chartobj1.put ("showAlternateHGridColor" , "0");
                chartobj1.put ("showAlternateVGridColor" , "0");
                chartobj1.put ("legendBgAlpha" , "0");
                chartobj1.put  ("legendBorderAlpha" , "0");
                chartobj1.put ("legendShadow" , "0");
                chartobj1.put ("legendItemFontSize" , "10");
                chartobj1.put ("legendItemFontColor" , "#666666");
                chartobj1.put ("scrollheight" , "10");
                chartobj1.put ("flatScrollBars" , "1");
                chartobj1.put ("scrollShowButtons" , "0");
                chartobj1.put ("scrollColor" , "#cccccc");
                chartobj1.put ("showHoverEffect" , "1");              

 
            // Push the data into the array using map object.
            ArrayList arrData1 = new ArrayList();
            while(rs1.next())
            {
                Map<String, String> lv1 = new HashMap<String, String>();
                lv1.put("label", rs1.getString("m")+" - "+rs1.getString("y"));
                lv1.put("value", rs1.getString("p"));
               
                
                arrData1.add(lv1);             
            }
            
            //close the connection.
            rs1.close();
 
            //create 'dataMap' map object to make a complete FC datasource.
             Map<String, String> dataMap1 = new LinkedHashMap<String, String>();  
        /*
            gson.toJson() the data to retrieve the string containing the
            JSON representation of the data in the array.
        */
             dataMap1.put("chart", gson1.toJson(chartobj1));
             dataMap1.put("data", gson1.toJson(arrData1));

            FusionCharts columnChart1= new FusionCharts(
            "column3d",// chartType
                        "chart0",// chartId
                        "800","400",// chartWidth, chartHeight
                        "chart3",// chartContainer
                        "json",// dataFormat
                        gson1.toJson(dataMap1) //dataSource
                    );
           
            %>
            
<!--    Step 5: Render the chart    -->                
            <%=columnChart1.render()%>
    
           
       <%
         /*
            google-gson
    
            Gson is a Java library that can be used to convert Java Objects into 
            their JSON representation. It can also be used to convert a JSON string to 
            an equivalent Java object. Gson can work with arbitrary Java objects including
            pre-existing objects that you do not have source-code of.
            link : https://github.com/google/gson    
         */
    
            Gson gson2 = new Gson();
            
            
            // Form the SQL query that returns the top 10 most populous countries
            String sql2="select year(datedebut) as y, DATE_FORMAT(datedebut,'%M') as m, Count(*) as count from contrat group by year(datedebut), month(datedebut)";
         
            // Execute the query.
            PreparedStatement pt2=con.prepareStatement(sql2);    
            ResultSet rs2=pt2.executeQuery();
            
            // The 'chartobj' map object holds the chart attributes and data.
            Map<String, String> chartobj2 = new HashMap<String, String>();
            
            chartobj2.put("caption" , "Activité Contrat");
      
                
                chartobj2.put("subCaption", "2016 - 2017");
                 chartobj2.put("xAxisname", "Month");
                 chartobj2.put("yAxisName", "Taux Activité");
              
                 chartobj2.put("numVisiblePlot" , "12");
                
                //Cosmetics
                 chartobj2.put("paletteColors" , "#0075c2");
                 chartobj2.put("baseFontColor" , "#333333");
                 chartobj2.put("baseFont" , "Helvetica Neue,Arial");
                 chartobj2.put("captionFontSize" , "14");
                 chartobj2.put("subcaptionFontSize" , "14");
                 chartobj2.put("subcaptionFontBold" , "5");
                 chartobj2.put("showBorder" , "0");
                 chartobj2.put("bgColor" , "#ffffff");
                 chartobj2.put("xAxisnameFontSize","14");
                 chartobj2.put("yAxisnameFontSize","14");
                 chartobj2.put("showShadow" , "0");
                chartobj2.put ("canvasBgColor" , "#ffffff");
                chartobj2.put("canvasBorderAlpha" , "0");
                chartobj2.put("showValues" , "0");
                chartobj2.put ("divlineAlpha" , "100");
                chartobj2.put("divlineColor" , "#999999");
                chartobj2.put("divlineThickness" , "1");
                chartobj2.put ("divLineIsDashed" , "1");
                chartobj2.put ("divLineDashLen" , "1");
                chartobj2.put ("divLineGapLen" , "1");
                chartobj2.put ("usePlotGradientColor" , "0");
                chartobj2.put ("showplotborder" , "0");
                chartobj2.put ("showXAxisLine" , "1");
                chartobj2.put ("xAxisLineThickness" , "1");
                chartobj2.put ("xAxisLineColor" , "#999999");
                chartobj2.put ("showAlternateHGridColor" , "0");
                chartobj2.put ("showAlternateVGridColor" , "0");
                chartobj2.put ("legendBgAlpha" , "0");
                chartobj2.put  ("legendBorderAlpha" , "0");
                chartobj2.put ("legendShadow" , "0");
                chartobj2.put ("legendItemFontSize" , "10");
                chartobj2.put ("legendItemFontColor" , "#666666");
                chartobj2.put ("scrollheight" , "10");
                chartobj2.put ("flatScrollBars" , "1");
                chartobj2.put ("scrollShowButtons" , "0");
                chartobj2.put ("scrollColor" , "#cccccc");
                chartobj2.put ("showHoverEffect" , "1");              

 
            // Push the data into the array using map object.
            ArrayList arrData2 = new ArrayList();
            while(rs2.next())
            {
                Map<String, String> lv2 = new HashMap<String, String>();
                lv2.put("label", rs2.getString("m")+" - "+rs2.getString("y"));
                lv2.put("value", rs2.getString("count"));
               
                
                arrData2.add(lv2);             
            }
            
            //close the connection.
            rs2.close();
 
            //create 'dataMap' map object to make a complete FC datasource.
             Map<String, String> dataMap2 = new LinkedHashMap<String, String>();  
        /*
            gson.toJson() the data to retrieve the string containing the
            JSON representation of the data in the array.
        */
             dataMap2.put("chart", gson2.toJson(chartobj2));
             dataMap2.put("data", gson2.toJson(arrData2));

            FusionCharts columnChart2= new FusionCharts(
            "splinearea",// chartType
                        "chart99",// chartId
                        "800","400",// chartWidth, chartHeight
                        "chart7",// chartContainer
                        "json",// dataFormat
                        gson2.toJson(dataMap2) //dataSource
                    );
           
            %>
            
<!--    Step 5: Render the chart    -->                
            <%=columnChart2.render()%>
          
            
            
            
            
        
            
            
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


<!--===  NOTIFICATION CALL ====-->

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