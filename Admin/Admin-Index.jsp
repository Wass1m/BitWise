
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <title>Handyan - Handy Man, Plumber HTML Template</title>
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
                        <p class="exo">Ecole Superieure D'informatique SBA.</p>
                    </li>
                    <li class="col-xs-6"> <i class="fa fa-phone"></i>
                        <h6>+213 48 74 94 52</h6>
                        <p class="exo">BITWISEINC@BITWISE.dz</p>
                    </li>
                </ul>
            </div>

            <!--======= NAV =========-->
            <nav>
                <!--======= MENU START =========-->
                <ul class="ownmenu">
                    <li class="active"><a href="index.html">Home</a>
                        <ul class="dropdown">
                            <li><a href="02-Home.html">Home 2</a></li>
                            <li><a href="index-2.html">index Slider 2</a></li>
                        </ul>
                    </li>
                    <li><a href="03-About.html">About Us </a></li>
                    <div><li class=""><a href="04-Services.html">Services</a>
                        <form action="DropDown.jsp"> </form></li> </div>
                    <li><a href="07-Gallery.html">gALLERY</a></li>
                    <li><a href="10-Blog.html">Blog</a></li>
                    <li><a href="12-Contact-Page.html">Contact us</a></li>
                    <li><a href="index.html">Pages</a>

                        <!--======= MEGA MENU =========-->
                        <div class="megamenu full-width">
                            <h6>All Pages</h6>
                            <div class="row nav-post">
                                <div class="col-sm-3 boder-da-r">
                                    <ul>
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="02-Home.html">Home 2</a></li>
                                        <li><a href="index-2.html">index Slider 2</a></li>
                                        <li><a href="03-About.html">About</a></li>
                                        <li><a href="04-Services.html">Services</a></li>
                                        <li><a href="05-Services-2.html">Services 2</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-3">
                                    <ul>
                                        <li><a href="06-Services-Details.html">Services Details</a></li>
                                        <li><a href="07-Gallery.html">Gallery</a></li>
                                        <li><a href="08-Gallery-Full-width.html">Gallery Full Width</a></li>
                                        <li><a href="10-Blog.html">Blog</a></li>
                                        <li><a href="11-Blog-Single.html">Blog Single</a></li>
                                        <li><a href="12-Contact-Page.html">Contact </a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6"> <img class="img-responsive pull-right" src="images/nav-img.png" alt=""> </div>
                            </div>
                        </div>
                    </li>
                    <li><a style="cursor: pointer" data-toggle="modal" data-target="#myModal" id="have_it">Log In</a>  <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Log In</h4>
                                </div>
                                <div class="modal-body">
                                    <form action="login.jsp">
                                        <div class="form-group">
                                            <input type="text" name="user" id="use" class="form-control input-sm" placeholder="Username or Email" required>
                                        </div>
                                        <input type="password" name="password" id="pass" class="form-control input-sm" placeholder="password" required>
                                        <input type="submit" value="Submit" class="btn btn-info btn-block ">
                                    </form>
                                </div>
                                <div class="modal-footer">

                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div></li>
                </ul>

                <!--======= SUBMIT COUPON =========-->
                <div class="sub-nav-co"> <a href="#."><i class="fa fa-search"></i></a> </div>
            </nav>
        </div>
    </header>

    <!--======= BANNER =========-->
    <div id="banner">
        <div class="flex-banner">
            <ul class="slides">
                <li> <img src="images/slide-1.jpg" alt="" >

                    <!--======= BANNER INNER =========-->
                    <div class="banner-up">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-5">

                                    <!--======= BANNER FORM =========-->
                                    <div class="bnr-form">
                                        <h3>Quick service request</h3>
                                        <h6>24 housrs service available!</h6>
                                        <!--<div id="banner_message" class="success-msg"> <i class="fa fa-paper-plane-o"></i>Thank You. Your Message has been Submitted</div>-->
                                        <form role="form" action="inscription.jsp">
                                            <div class="row">
                                                <div class=" col-sm-6 ">
                                                    <div class="form-group">
                                                        <input type="text" name="nom" id="nom" class="form-control input-sm" placeholder="Nom" required>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="prenom" id="full_name" class="form-control input-sm" placeholder="Prenom">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="adresse" id="adresse" class="form-control input-sm" placeholder="Adresse" required>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="tel" id="tel" class="form-control input-sm" placeholder="telephone" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <input type="email" name="email" id="email" class="form-control input-sm" placeholder="Email Address" required onChange="loadXMLDoc()">
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-6 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" name="user_name" id="user_name" class="form-control input-sm" placeholder="Username" required onChange="loadXMLDoc()">


                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                        <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required >
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
                                                        <input type="text" name="localisation" id="localisation" class="form-control input-sm" placeholder="'Localisation">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6 col-sm-6 col-md-6">
                                                    <div class="form-group">
                                                        <select name="type"  >
                                                            <option  value="Client">Particulier</option>
                                                            <option  value="Entreprise">Entreprise</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="col-sm-6">
                                                    <input type="submit" id='mySubmit' value="Register" class="btn btn-info btn-block ">

                                                </div> <div class="col-sm-6"> <span id="err"></span></div>

                                            </div>
                                        </form>
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
                                            <h1>just call <span>+213 48 74 94 52</span></h1>
                                        </section>
                                        <section>
                                            <h1>we are always  ready to service</h1>
                                        </section>
                                        <a href="#." class="btn btn-1">get quote</a><a href="#." class="btn">about us</a> </div>
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
                            <p>Sedquis viverra enim. Vivamus aliquet rutrusm dui a varius. Mauris ornoare tortor in eleifends blanditullam ut legula et neque Praesent egset bibendum purus quis.</p>
                            <a href="#." class="btn">view more service</a> </li>
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
                    <a href="#." class="btn">conatct Us</a> </div>
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
                                    <p>Totam rem aperiam, eaque ipsa quae ab illo sat inventore veritatis et quasi architecto bea taie vitae dicta sunt explicabo. Nemo enim ipsamer voluptatem quia voluptas sit aspernatur autoil odit aut fugit sed quia...</p>
                                    <a href="#." class="btn">LEARN MORE</a> </div>

                                <!--======= HandyMan Repairs =========-->
                                <div role="tabpanel" class="tab-pane animated fadeInRight" id="quaility"> <i class="fa fa-users"></i>
                                    <h2>quality work</h2>
                                    <p>Totam rem aperiam, eaque ipsa quae ab illo sat inventore veritatis et quasi architecto bea taie vitae dicta sunt explicabo. Nemo enim ipsamer voluptatem quia voluptas sit aspernatur autoil odit aut fugit sed quia...</p>
                                    <a href="#." class="btn">LEARN MORE</a> </div>

                                <!--======= GAS LINES =========-->
                                <div role="tabpanel" class="tab-pane animated fadeInRight" id="genius"> <i class="fa fa-users"></i>
                                    <h2>genius workers</h2>
                                    <p>Totam rem aperiam, eaque ipsa quae ab illo sat inventore veritatis et quasi architecto bea taie vitae dicta sunt explicabo. Nemo enim ipsamer voluptatem quia voluptas sit aspernatur autoil odit aut fugit sed quia...</p>
                                    <a href="#." class="btn">LEARN MORE</a></div>

                                <!--======= SEWER LINES =========-->
                                <div role="tabpanel" class="tab-pane animated fadeInRight" id="low-cost"> <i class="fa fa-users"></i>
                                    <h2>low cost</h2>
                                    <p>Totam rem aperiam, eaque ipsa quae ab illo sat inventore veritatis et quasi architecto bea taie vitae dicta sunt explicabo. Nemo enim ipsamer voluptatem quia voluptas sit aspernatur autoil odit aut fugit sed quia...</p>
                                    <a href="#." class="btn">LEARN MORE</a></div>

                                <!--======= WATER DAMAGE PREVENTION =========-->
                                <div role="tabpanel" class="tab-pane animated fadeInRight" id="life-supp"> <i class="fa fa-users"></i>
                                    <h2>life time support</h2>
                                    <p>Totam rem aperiam, eaque ipsa quae ab illo sat inventore veritatis et quasi architecto bea taie vitae dicta sunt explicabo. Nemo enim ipsamer voluptatem quia voluptas sit aspernatur autoil odit aut fugit sed quia...</p>
                                    <a href="#." class="btn">LEARN MORE</a></div>
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

                            <!--======= SLIDE 1 =========-->
                            <div class="testi-text">
                                <div class="avatar"> <img src="images/testi-1.jpg" alt=""> </div>
                                <p>voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
                                <h6>- Rock Lancer</h6>
                                <span>founder of lara consult</span> </div>

                            <!--======= SLIDE 1 =========-->
                            <div class="testi-text">
                                <div class="avatar"> <img src="images/testi-2.jpg" alt=""> </div>
                                <p>voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
                                <h6>- Rock Lancer</h6>
                                <span>founder of lara consult</span> </div>

                            <!--======= SLIDE 1 =========-->
                            <div class="testi-text">
                                <div class="avatar"> <img src="images/testi-3.jpg" alt=""> </div>
                                <p>voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
                                <h6>- Rock Lancer</h6>
                                <span>founder of lara consult</span> </div>
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
                        <p>Totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enimsa ipsam voluptatem quia voluptas sit asper niaturu odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptaitem sequi tha nesciunt. Neque porro quisquam est, </p>
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
    <section class="blog">
        <div class="container">

            <!--======= TITTLE =========-->
            <div class="tittle">
                <h2>news from blog</h2>
            </div>
            <ul class="row">

                <!--======= BLOG 1 =========-->
                <li class="col-sm-4">
                    <div class="b-inner"> <img class="img-responsive" src="images/b-img-1.jpg" alt="" >
                        <div class="b-details"> <span><i class="fa fa-clock-o"></i> mar 23 ,2015</span> <a href="#.">we provide 24 hours service</a> </div>
                    </div>
                </li>

                <!--======= BLOG 2 =========-->
                <li class="col-sm-4">
                    <div class="b-inner"> <img class="img-responsive" src="images/b-img-2.jpg" alt="" >
                        <div class="b-details"> <span><i class="fa fa-clock-o"></i> mar 23 ,2015</span> <a href="#.">we provide 24 hours service</a> </div>
                    </div>
                </li>

                <!--======= BLOG 3 =========-->
                <li class="col-sm-4">
                    <div class="b-inner"> <img class="img-responsive" src="images/b-img-3.jpg" alt="" >
                        <div class="b-details"> <span><i class="fa fa-clock-o"></i> mar 23 ,2015</span> <a href="#.">we provide 24 hours service</a> </div>
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

    <!--======= FOOTER =========-->

    <%

        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tbw5","root","toor");
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
<script>function checkPass()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('password');
    var pass2 = document.getElementById('password_confirmation');
    //Store the Confimation Message Object ...
    var message = document.getElementById('confirmMessage');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field
    //and the confirmation field
    if(pass1.value === pass2.value){
        //The passwords match.
        //Set the color to the good color and inform
        //the user that they have entered the correct password
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!";
        document.getElementById("mySubmit").disabled = false;
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!";
        document.getElementById("mySubmit").disabled = true;
    }
}</script>
<script>
    function loadXMLDoc()
    {
        var xmlhttp;
        var x=document.getElementById('email');

        var k=document.getElementById('user_name');
        var urls="pass.jsp?ver="+k.value+"&X="+x.value;
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
                if(document.getElementById("err").innerHTML.includes("Taken")){document.getElementById("mySubmit").disabled = true;}
                else document.getElementById("mySubmit").disabled = false;

            };
        };
        xmlhttp.open("GET",urls,true);
        xmlhttp.send();



    }</script>
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
</body>
</html>