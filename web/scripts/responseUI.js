/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function startLiveUpdate(){

_TIB_TimeOutHourApp_1hr();
setTimeout(function(){_TIB_TimeOutHourServices();},300);

//_TIB_TimeOutHourServices();
//_TIB_TopError_APP_LOG_loadJson();
 
};  


function stopLiveUpdate(){
    startLiveUpdate().stopPropagation();
};


