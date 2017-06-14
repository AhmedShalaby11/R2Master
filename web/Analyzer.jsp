<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="assets/img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>DASHBOARD | HOME</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <script src="scripts/angular/angularApp.js" type="text/javascript"></script>
        <script src="scripts/_TIB_getCorrelation.js" type="text/javascript"></script>
        <!-- Bootstrap core CSS     -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

        <!-- Animation library for notifications   -->
        <link href="assets/css/animate.min.css" rel="stylesheet"/>

        <!--  Light Bootstrap Table core CSS    -->
        <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="assets/css/demo.css" rel="stylesheet" />
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
        <!--     Fonts and icons     -->
        <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
        <link href="assets/css/ddl.css" rel="stylesheet" type="text/css"/>

        <!--CUSTOM LIBS-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jq-2.2.4/dt-1.10.15/af-2.2.0/b-1.3.1/cr-1.3.3/fc-3.2.2/fh-3.1.2/kt-2.2.1/r-2.1.1/rg-1.0.0/rr-1.2.0/sc-1.4.2/datatables.min.css"/>

        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/jq-2.2.4/dt-1.10.15/af-2.2.0/b-1.3.1/cr-1.3.3/fc-3.2.2/fh-3.1.2/kt-2.2.1/r-2.1.1/rg-1.0.0/rr-1.2.0/sc-1.4.2/datatables.min.js"></script>

        <script src="scripts/_TIB_TimeOutHourApp.js"></script>
        <script src="scripts/_TIB_TimeOutHourServices.js"></script>
        <script src="scripts/_TIB_TopError_APP_LOG.js"></script>
        <script src="scripts/angular/angularApp.js"></script>
        <script src="scripts/responseUI.js"></script>


    </head>
    <body>

        <div class="wrapper">
            <div class="sidebar" data-color="red" data-image="assets/img/sidebar-5.jpg">



                <div class="sidebar-wrapper">
                    <div class="logo">
                        <a href="home.jsp" class="simple-text">
                            HOME
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
                        <!--                        <div class="navbar-header">
                                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                                                        <span class="sr-only">Toggle navigation</span>
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                        <span class="icon-bar"></span>
                                                    </button>
                                                    <a class="navbar-brand" href="#">Dashboard</a>
                                                </div>-->
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

                            <ul class="nav navbar-nav ">

                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <p class="redColor" >
                                            MORE
                                            <b class="caret" class="redColor"></b>
                                        </p>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">R2live update:ON/OFF <span class="badge">Dev</span></a></li>
                                        <li><a href="#">Monitoring Rules <span class="badge">Dev</span></a></li>
                                        <li><a href="#">R2Beats Service Tracker<span class="badge">Dev</span></a></li>
                                        <li><a id ='ur' href="#">R2Log Correlation ID</a></li>


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
                <div class="container jumbotron Banner" >
                    <h2>Data Analyzer</h2>
                    <h4>Now it's easy to track TIBCO Applications,Services and exceptions with live trends.</h4>

                </div>
                
              
                
                <!-- Trigger/Open The Modal -->
<button id="myBtn">Open Modal</button>

<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Transaction Data</h2>
    </div>
    <div class="modal-body" id='trnData'>
  
    </div>
 
  </div>                
</div>      
                <div class="container">
                    <h4>Data Source: SYSADM.LOG</h4><div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="input-group" id="adv-search">
                                    <input type="text" id='Servicename' class="form-control" placeholder="Service Name (Optional)" />
                                    <div class="input-group-btn">
                                        <div class="btn-group" role="group">
                                            <div class="dropdown dropdown-lg">
                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                                                <div class="dropdown-menu dropdown-menu-right" role="menu">
                                                    <form class="form-horizontal" role="form">
                                                        <div class="form-group">
                                                            <label for="filter">Application</label>
                                                            <select class="form-control" id='appdrop'>
                                                                <option>Select</option>
                                                                <option>ADSL</option>
                                                                <option>BATCH_HANDLER</option>
                                                                <option>BILLINGCMS_UPGRADE</option>
                                                                <option>CALLBACKS</option>
                                                                <option>CALLFILTRATION</option>
                                                                <option>CALLHISTORY_BILLSMS</option>
                                                                <option>CALLHISTORY_ENG</option>
                                                                <option>CALLHISTORY_VOIP</option>
                                                                <option>CCW_ADD_SS</option>
                                                                <option>CHANNEL_INTF</option>
                                                                <option>CLOUD</option>
                                                                <option>CONTENTCONNECTOR</option>
                                                                <option>CSDB</option>
                                                                <option>CUSTOMERCAREGET</option>
                                                                <option>CUSTOMERCAREWRITE_ENG</option>
                                                                <option>CUSTOMERCAREWRITE_SR</option>
                                                                <option>CUSTOMERCAREWRITEVBCI</option>
                                                                <option>CUSTOMERCAREWRITEVBCII</option>
                                                                <option>CUSTOMERCAREWRITEWSII</option>
                                                                <option>DATA</option>
                                                                <option>EVENTREFERENCE</option>
                                                                <option>IDENTIFICATIONMANAGMENT</option>
                                                                <option>INTERNET</option>
                                                                <option>LDB_ENG</option>
                                                                <option>LOYALTIES_ENG</option>
                                                                <option>MBC</option>
                                                                <option>MESSAGING</option>
                                                                <option>MIP</option>
                                                                <option>MNP_ENG</option>
                                                                <option>MNP_TIMERS</option>
                                                                <option>NOTIFICATION</option>
                                                                <option>ODS</option>
                                                                <option>PAYMENTS_GATEWAY_ENG</option>
                                                                <option>PCRF</option>
                                                                <option>PDFINVOICES</option>
                                                                <option>POS</option>
                                                                <option>PREPAID</option>
                                                                <option>PRODUCTCATALOG</option>
                                                                <option>PROMOENGINE</option>
                                                                <option>PROVGATEWAY</option>
                                                                <option>PROVISIONING</option>
                                                                <option>RBT</option>
                                                                <option>REMEDY</option>
                                                                <option>RISK_REVAMP</option>
                                                                <option>RISKHANDLERS</option>
                                                                <option>RISKMANAGEMENT_BATCH</option>
                                                                <option>RISKMANAGMENT</option>
                                                                <option>RULES</option>
                                                                <option>SADM</option>
                                                                <option>SDP</option>
                                                                <option>SERVICES_CRTO</option>
                                                                <option>SERVICES_ENG</option>
                                                                <option>SERVICES_INTROAM</option>
                                                                <option>SERVICES_PPDV</option>
                                                                <option>SERVICESENTERPRISE</option>
                                                                <option>SHAREDSTATE</option>
                                                                <option>SIEBEL_LOYALTY</option>
                                                                <option>SIEBLEVBC</option>
                                                                <option>SUBSCRIPTIONMANAGEMENT</option>
                                                                <option>THIRDPARTIES</option>
                                                                <option>USSD</option>
                                                                <option>VMT</option>
                                                                <option>VOICE</option>
                                                                <option>VPN</option>
                                                                <option>WORKFLOW_ENGINE</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="filter">Duration</label>
                                                            <select class="form-control" id='durationdrop'>
                                                                <option>select</option>
                                                                <option value ='.1'>10 Minutes</option>
                                                                <option value ='.5'>30 Minutes</option>
                                                                <option value ='1'>1 Hour</option>
                                                                <option value ='3'>3 Hours</option>
                                                                <option value ='6'>6 Hours</option>
                                                            </select>
                                                        </div>
                                                </div>
                                                </form>
                                            </div>
                                            <button type="button" onclick='_TIB_TopError_APP_LOG_loadJson();' class="btn btn-danger"><span class="fa fa-search" aria-hidden="true"></span>Search</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                </div>

                <script>
                getCorrelationID();
                    hideDatatable();
                </script>
          





<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

                <!--   Core JS Files   -->

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


                <div id='mainContainer' class='container'> 


                    <div id ='dataTableDiv' >

                    </div>

                </div>
            </div>



    </body>
</html>
