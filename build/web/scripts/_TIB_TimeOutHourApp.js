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
        url: "CSV/_TIB_TimeOutHourApp.json",
        dataType: "json",
        async: false
    }).responseText;

    var data = new google.visualization.DataTable(jsonData);
    var options = {
        title: 'Timeouts last hour | By Application',
//          pieHole: 0.4,
        is3D: true
    };

    var chart = new google.visualization.PieChart(document.getElementById('_TIB_TimeOutHourApp'));

    chart.draw(data, options);
    console.log("_getCurrentJSON loaded");
}
;


function _TIB_TimeOutHourApp_1hr() {

    setInterval(function () {
        _TIB_TimeOutHourApp_loadJson();
    }, 10000);
//   console.log("Load the Visualization API and the piechart package.");
    google.load('visualization', '1', {'packages': ['corechart']});
    google.setOnLoadCallback(_TIB_TimeOutHourApp_1hr);

    setInterval(function () {
        var jsonData = $.ajax({
            url: "CSV/_TIB_TimeOutHourApp.json",
            dataType: "json",
            async: false
        }).responseText;
//    console.log("Create our data table out of JSON data loaded from server.");
        var data = new google.visualization.DataTable(jsonData);
        var options = {
            title: 'TIBCO Timeouts last hour | Application',
//          pieHole: 0.4,
            is3D: true
        };
//    console.log("Instantiate and draw our chart, passing in some options.");
        var chart = new google.visualization.PieChart(document.getElementById('_TIB_TimeOutHourApp'));

        chart.draw(data, options);
        console.log("Chart:TIBCO Timeouts last hour | Application ");

    }, 10000);


}

var _TIB_TimeOutHourApp_loadJson = function () {
    var d = new Date();
    var day = d.getDate();
    var month = d.getMonth() + 1;
    var year = d.getFullYear();
    var date = year + "-0" + month + "-" + day;
    var res = date.replace("-", "");
    var partition = res.replace("-", "");
    var _Appfilename = "_TIB_TimeOutHourApp";
    var _TIB_TimeOutHourApp = "select count(correlationid) AS \"number\",applicationid\n" +
            " from exceptionrec \n" +
            "partition (\"" + partition + "\" )\n" +
            "where message like '-500%'\n" +
            "and time_stamp > sysdate - .1/24\n" +
            "group by applicationid";

    $.post('df_Connector', {_sql: _TIB_TimeOutHourApp, fileName: _Appfilename},
            function (returnedData) {
                console.log("JSON:TIBCO Timeouts last hour | Application");
            });
};





