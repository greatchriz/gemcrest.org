$(document).ready(function(){

	var minMoney 	= [1000];
	var maxMoney	= [95000 ];
	$("#money4").val(minMoney[0]);
	console.log($("#money4").val(minMoney[0]));
	
  	//Calculator
	function calc4(){
		var money = parseFloat($("#money4").val());
	
		        if( (money >= 1000 && money <= 3000)){
		        	var profitTotal4 = money / 100 * 150;
					var profitTotal4 = profitTotal4.toFixed(2);

					$("#profitTotal4").text(profitTotal4);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitTotal4 = money / 100 * 560;
					var profitTotal4 = profitTotal4.toFixed(2);

					$("#profitTotal4").text(profitTotal4);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitTotal4 = money / 100 * 1550;
					var profitTotal4 = profitTotal4.toFixed(2);
					
					$("#profitTotal4").text(profitTotal4);
		        } if (money >= 10001 && money <= 40000) {
		        	var profitTotal4 = money / 100 * 2350;
					var profitTotal4 = profitTotal4.toFixed(2);
				
					
					$("#profitTotal4").text(profitTotal4);
		        } if (money >= 40001 && money <= 95000) {
		        	var profitTotal4 = money / 100 * 3600;
					var profitTotal4 = profitTotal4.toFixed(2);
					

					$("#profitTotal4").text(profitTotal4);
		        
		        } 
		        
		     
		    
		        if( (money >= 1000 && money <= 3000)){
		        	var profitPercent4 = 150;
					var profitPercent4 = profitPercent4.toFixed(2);

					$("#profitPercent4").text(profitPercent4);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitPercent4 = 560;
					var profitPercent4 = profitPercent4.toFixed(2);

					$("#profitPercent4").text(profitPercent4);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitPercent4 = 1550;
					var profitPercent4 = profitPercent4.toFixed(2);
					
					$("#profitPercent4").text(profitPercent4);
		        } if (money >= 10001 && money <= 50000) {
		        	var profitPercent4 = 2350;
					var profitPercent4 = profitPercent4.toFixed(2);
				
					
					$("#profitPercent4").text(profitPercent4);
		        } if (money >= 50001 && money <= 95000) {
		        	var profitPercent4 = 3600;
					var profitPercent4 = profitPercent4.toFixed(2);
					

					$("#profitPercent4").text(profitPercent4);
		        
		        } 
		        
		

	}
	if($("#money4").length){
		calc4();
	}
	$("#money4").keyup(function(){
		calc4();
	});
	
	


});

