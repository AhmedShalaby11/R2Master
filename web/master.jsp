<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>DASHBOARD | HOME</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />


        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="assets/css/demo.css" rel="stylesheet" />


        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />


        <!--CUSTOM LIBS-->
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="scripts/_TIB_TimeOutHourApp.js"></script>
        <script src="scripts/_TIB_TimeOutHourServices.js"></script>
        <script src="scripts/_TIB_TopError_APP_LOG.js"></script>
        <script src="scripts/angular/angularApp.js"></script>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
        <script src="scripts/responseUI.js"></script>

    </head>
    <body>

        <div class="wrapper">
            <div class="sidebar" data-color="red" data-image="assets/img/sidebar-4.jpg">



                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="dashboard.jsp" class="simple-text">
                            R2
                        </a>
                    </div>

                    <ul class="nav">
                        <li class="">
                            <a href="home.jsp">
                                <i class="pe-7s-graph"></i>
                                <p>Dashboard</p>
                            </a>
                        </li>
                           <li class="active">
                               <a href="Analyzer.jsp">
                                <i class="pe-7s-shuffle"></i>
                                <p>Data Analyzer</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="pe-7s-user"></i>
                                <p>User Profile <span class="badge">Dev</span></p> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="pe-7s-note2"></i>
                                <p>History <span class="badge">Dev</span></p>
                            </a>
                        </li>
                        <!--                <li>
                                            <a href="typography.html">
                                                <i class="pe-7s-news-paper"></i>
                                                <p>Typography</p>
                                            </a>
                                        </li>-->
                        <!--                <li>
                                            <a href="icons.html">
                                                <i class="pe-7s-science"></i>
                                                <p>Icons</p>
                                            </a>
                                        </li>-->

                        <li>
                            <a href="#">
                                <i class="pe-7s-bell"></i>
                                <p>Notifications <span class="badge">Dev</span></p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>

            <div class="main-panel">
                <nav class="navbar navbar-default navbar-fixed">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="#">Dashboard</a>
                        </div>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-left">
                                <!--                        <li>
                                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                                <i class="fa fa-dashboard"></i>
                                                                                                <p class="hidden-lg hidden-md">Dashboard</p>
                                                            </a>
                                                        </li>-->
                                <!--                        <li class="dropdown">
                                                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                                    <i class="fa fa-globe"></i>
                                                                    <b class="caret hidden-sm hidden-xs"></b>
                                                                    <span class="notification hidden-sm hidden-xs">5</span>
                                                                                                        <p class="hidden-lg hidden-md">
                                                                                                                5 Notifications
                                                                                                                <b class="caret"></b>
                                                                                                        </p>
                                                              </a>
                                                              <ul class="dropdown-menu">
                                                                <li><a href="#">Notification 1</a></li>
                                                                <li><a href="#">Notification 2</a></li>
                                                                <li><a href="#">Notification 3</a></li>
                                                                <li><a href="#">Notification 4</a></li>
                                                                <li><a href="#">Another notification</a></li>
                                                              </ul>
                                                        </li>-->
                                <li>
                                    <!--                           <a href="">
                                                                    <i class="fa fa-search"></i>
                                                                                                    <p class="hidden-lg hidden-md">Search</p>
                                                                </a>-->
                                </li>
                            </ul>

                            <ul class="nav navbar-nav navbar-right">

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <p>
                                            MORE
                                            <b class="caret"></b>
                                        </p>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">R2live update:ON/OFF <span class="badge">Dev</span></a></li>
                                        <li><a href="#">Monitoring Rules <span class="badge">Dev</span></a></li>
                                        <li><a href="#">R2 Service Tracker<span class="badge">Dev</span></a></li>
                                      
                                        
                                        <li class="divider"></li>
<li><a href="#">Report Bug</a></li>
                                        <li><a href="#">Help</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <!--                            <a href="#">
                                                                    <p>Log out</p>
                                                                </a>-->
                                </li>
                                <li class="separator hidden-lg hidden-md"></li>
                            </ul>
                        </div>
                    </div>
                </nav>
               <!--//body-->


           




                  
                         
                  
              



                <!--   Core JS Files   -->
                <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
                <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

                <!--  Checkbox, Radio & Switch Plugins -->
                <script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

                <!--  Charts Plugin -->
                <script src="assets/js/chartist.min.js"></script>

                <!--  Notifications Plugin    -->
                <script src="assets/js/bootstrap-notify.js"></script>



                <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
                <script src="assets/js/light-bootstrap-dashboard.js"></script>

                <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
                <script src="assets/js/demo.js"></script>

              

     
                </body>
                </html>
	