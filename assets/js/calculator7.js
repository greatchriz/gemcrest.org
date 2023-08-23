$(document).ready(function(){

	var minMoney 	= [200];
	var maxMoney	= [95000 ];
	$("#money6").val(minMoney[0]);
	console.log($("#money6").val(minMoney[0]));
	
  	//Calculator
	function calc6(){
		var money = parseFloat($("#money6").val());
	
		        if( (money >= 200 && money <= 3000)){
		        	var profitTotal6 = money / 100 * 300;
					var profitTotal6 = profitTotal6.toFixed(2);

					$("#profitTotal6").text(profitTotal6);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitTotal6 = money / 100 * 3600;
					var profitTotal6 = profitTotal6.toFixed(2);

					$("#profitTotal6").text(profitTotal6);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitTotal6 = money / 100 * 7550;
					var profitTotal6 = profitTotal6.toFixed(2);
					
					$("#profitTotal6").text(profitTotal6);
		        } if (money >= 10001 && money <= 45000) {
		        	var profitTotal6 = money / 100 * 9200;
					var profitTotal6 = profitTotal6.toFixed(2);
				
					
					$("#profitTotal6").text(profitTotal6);
		        } if (money >= 45001 && money <= 95000) {
		        	var profitTotal6 = money / 100 * 11000;
					var profitTotal6 = profitTotal6.toFixed(2);
					

					$("#profitTotal6").text(profitTotal6);
		        
		        } 
		        
		     
		    
		        if( (money >= 20 && money <= 3000)){
		        	var profitPercent6 = 300;
					var profitPercent6 = profitPercent6.toFixed(2);

					$("#profitPercent6").text(profitPercent6);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitPercent6 = 3600;
					var profitPercent6 = profitPercent6.toFixed(2);

					$("#profitPercent6").text(profitPercent6);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitPercent6 = 7550;
					var profitPercent6 = profitPercent6.toFixed(2);
					
					$("#profitPercent6").text(profitPercent6);
		        } if (money >= 10001 && money <= 40000) {
		        	var profitPercent6 = 9200;
					var profitPercent6 = profitPercent6.toFixed(2);
				
					
					$("#profitPercent6").text(profitPercent6);
		        } if (money >= 40001 && money <= 95000) {
		        	var profitPercent6 = 11000;
					var profitPercent6 = profitPercent6.toFixed(2);
					

					$("#profitPercent6").text(profitPercent6);
		        
		        } 
		        
		

	}
	if($("#money6").length){
		calc6();
	}
	$("#money6").keyup(function(){
		calc6();
	});
	
	


});

