/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var getCorrelationID = function (){
    $("#ur").click(function(){
        $(this).css("color","green");
        $(this).css("font-weight","bold");
  $("#example tbody  tr td").click(function(){
      var clickedCOID = $(this).text();
      getTransactionData(clickedCOID);
  });
  });
};


var getTransactionData = function(clickedCOID){
$.post('df_transaction',function(response){
        popUpData(response);
});
};

var popUpData = function(response){
    
 $("#trnData").append(response);  
};


