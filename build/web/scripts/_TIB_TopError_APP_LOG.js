    /* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var hideDatatable = function(){
  $(document).ready(function(){
      $("#example").hide();
  })  ;
};

var _TIB_TopError_APP_LOG_loadJson = function () {
    //append loading icon
     $("#dataTableDiv").empty();
    $("#dataTableDiv").append("<div id='loadingNotify'><i id='' class=' fa fa-cog fa-spin fa-3x fa-fw'></i><h3>Working on your request..</h3></div>");

    var d = new Date();
    var day = d.getDate();
    var month = d.getMonth() + 1;
    var n = d.getTime();
    var year = d.getFullYear();
    var date = year + "-0" + month + "-" + day;
    var res = date.replace("-", "");
    var partition = res.replace("-", "");
    var x = Math.floor((Math.random() * 100000) + 1);

//    =================================
    var Application = document.getElementById("appdrop").value;
    var Servicename = document.getElementById("Servicename").value;
    var tablename ="log";
    var duration = document.getElementById("durationdrop").value;
    var file = Application + x;


    $.get('df_TIBCOLOG_ERRORAPP', {partition: partition, Servicename: Servicename, tablename: tablename, duration: duration, fileName: file, Application: Application},
            function (returnedData) {

                console.log("JSON:_TIB_TopError_APP_LOG");
                console.log(returnedData);

                var url = "CSV/" + file + ".txt";
                $('#loadingNotify').empty();
                $('#loadingNotify').append("<h3>Your Data is ready click</h3> <button id='url' class='btn btn-danger'>Show Log</button>");
//append dt
                appendDataTable(url);
    
               
            });
};

var appendDataTable = function (url) {
    $("#url").click(function(){


   var quesIndex = url.indexOf("?");
  var  url2 = url.slice(0, quesIndex)+"t";
//  alert(url2);
  DataTableHTML();
     $('#example').DataTable({
        
        "ajax": {
            "url": url2,
            "dataSrc": "data"
        }
    });
    $("#url").hide();
    });
};

var DataTableHTML = function(){
  $("#dataTableDiv").append("     <table id='example' class='container display' cellspacing='0' width='90%'>"
                       +" <thead>"
                            +"<tr>"
                             +"   <th>Application</th>"
                            +"    <th>Service</th>"
                              +"  <th>Hostname</th>"
                             +"   <th>Time</th>"
                              +"  <th>CO ID</th>"
                              +"  <th>Number</th>"
                          +"  </tr>"
                     +"   </thead>"
                      +"  <tfoot>"
                         +"   <tr>"
                            +"    <th>Application</th>"
                            +"    <th>Service</th>"
                            +"    <th>Hostname</th>"
                            +"    <th>Time</th>"
                            +"    <th>CO ID</th>"
                            +"    <th>Number</th>"
                       +"     </tr>"
                     +"   </tfoot>"
                   +" </table>");  
};