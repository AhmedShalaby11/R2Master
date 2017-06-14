<%-- 
    Document   : dashboard
    Created on : Jun 9, 2017, 11:03:58 PM
    Author     : AShalaby11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head >
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.13/af-2.1.3/b-1.2.4/b-colvis-1.2.4/b-html5-1.2.4/cr-1.3.2/r-2.1.0/sc-1.4.2/se-1.2.0/datatables.min.js"></script>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
            <script src="scripts/getChart.js"></script>
            <script src="scripts/angular/angularApp1.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
              <script>pageProps();</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title></title>
        </head>
        <body ng-app="myApp" ng-controller="myCtrl">
            <div >
                
            </div>
      
    

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
     // Load the Visualization API and the piechart package.
    google.charts.load('current', {'packages':['corechart']});
      
    // Set a callback to run when the Google Visualization API is loaded.
    google.charts.setOnLoadCallback(drawChart);
      
    function drawChart() {
      var jsonData = $.ajax({
          url: "CSV/data.json",
          dataType: "json",
          async: false
          }).responseText;
          
      // Create our data table out of JSON data loaded from server.
      var data = new google.visualization.DataTable(jsonData);

      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
      chart.draw(data, {width: 1000, height: 240});
    }


    </script>

 
 <div id="chart_div"></div>
  
 <div ng-repeat="x in myWelcome">  
 
     <p>{{x}}</p>
 
 
 </div>
        </body>
        
        
        </html>
