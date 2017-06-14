/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var getPartition = function () {
    var d = new Date();
    var day = d.getDate();
    var month = d.getMonth() + 1;
    var year = d.getFullYear();
    var date = day + "-" + month + "-" + year;
    var res = date.replace("-", "");
    var partition = res.replace("-", "");

};


function _getCurrentJSON()
{
    var jsonData = $.ajax({
        url: "CSV/_TIB_TimeOutHourServices.json",
        dataType: "json",
        async: false
    }).responseText;

    var data = new google.visualization.DataTable(jsonData);
    var options = {
        title: 'Timeouts last hour | By Services',
//          pieHole: 0.4,
        is3D: true
    };

    var chart = new google.visualization.PieChart(document.getElementById('_TIB_TimeOutHourServices'));

    chart.draw(data, options);
    console.log("_getCurrentJSON loaded");
}
;


function _TIB_TimeOutHourServices() {
    // _TIB_TimeOutHourServices_loadJson();
    setInterval(function () {
        _TIB_TimeOutHourServices_loadJson();
    }, 10000);
//   console.log("Load the Visualization API and the piechart package.");
    google.load('visualization', '1', {'packages': ['corechart']});
//    console.log("Set a callback to run when the Google Visualization API is loaded.");
    google.setOnLoadCallback(_TIB_TimeOutHourServices);


    _getCurrentJSON();
    setInterval(function () {
        var jsonData = $.ajax({
            url: "CSV/_TIB_TimeOutHourServices.json",
            dataType: "json",
            async: false
        }).responseText;
//    console.log("Create our data table out of JSON data loaded from server.");
        var data = new google.visualization.DataTable(jsonData);
        var options = {
            title: 'TIBCO Timeouts last hour | By Services',
//          pieHole: 0.4,
            is3D: true
        };
//    console.log("Instantiate and draw our chart, passing in some options.");
        var chart = new google.visualization.PieChart(document.getElementById('_TIB_TimeOutHourServices'));

        chart.draw(data, options);
        console.log("Chart:_TIB_TimeOutHourServices ");

    }, 9000);


}
;

var _TIB_TimeOutHourServices_loadJson = function () {
    var d = new Date();
    var day = d.getDate();
    var month = d.getMonth() + 1;
    var year = d.getFullYear();
    var date = year + "-0" + month + "-" + day;
    var res = date.replace("-", "");
    var partition = res.replace("-", "");
    var _Servicefilename = "_TIB_TimeOutHourServices";
    var _TIB_TimeOutHourService = "select count(correlationid) AS \"number\",servicename\n" +
            " from exceptionrec \n" +
            "partition (\"" + partition + "\" )\n" +
            "where message like '-500%'\n" +
            "and time_stamp > sysdate - .1/24\n" +
            "group by servicename";

    $.post('df_Connector', {_sql: _TIB_TimeOutHourService, fileName: _Servicefilename},
            function (returnedData) {
                console.log("JSON:_TIB_TimeOutHourServices");
            });
};


