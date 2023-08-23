$(document).ready(function(){

	var minMoney 	= [1000];
	var maxMoney	= [95000 ];
	$("#money3").val(minMoney[0]);
	console.log($("#money3").val(minMoney[0]));
	
  	//Calculator
	function calc3(){
		var money = parseFloat($("#money3").val());
	
		        if( (money >= 1000 && money <= 3000)){
		        	var profitTotal3 = money / 100 * 122;
					var profitTotal3 = profitTotal3.toFixed(2);

					$("#profitTotal3").text(profitTotal3);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitTotal3 = money / 100 * 520;
					var profitTotal3 = profitTotal3.toFixed(2);

					$("#profitTotal3").text(profitTotal3);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitTotal3 = money / 100 * 1050;
					var profitTotal3 = profitTotal3.toFixed(2);
					
					$("#profitTotal3").text(profitTotal3);
		        } if (money >= 10001 && money <= 50000) {
		        	var profitTotal3 = money / 100 * 1450;
					var profitTotal3 = profitTotal3.toFixed(2);
				
					
					$("#profitTotal3").text(profitTotal3);
		        } if (money >= 50001 && money <= 95000) {
		        	var profitTotal3 = money / 100 * 1850;
					var profitTotal3 = profitTotal3.toFixed(2);
					

					$("#profitTotal3").text(profitTotal3);
		        
		        } 
		        
		     
		    
		        if( (money >= 1000 && money <= 3000)){
		        	var profitPercent3 = 122;
					var profitPercent3 = profitPercent3.toFixed(2);

					$("#profitPercent3").text(profitPercent3);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitPercent3 = 520;
					var profitPercent3 = profitPercent3.toFixed(2);

					$("#profitPercent3").text(profitPercent3);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitPercent3 = 1050;
					var profitPercent3 = profitPercent3.toFixed(2);
					
					$("#profitPercent3").text(profitPercent3);
		        } if (money >= 10001 && money <= 50000) {
		        	var profitPercent3 = 1450;
					var profitPercent3 = profitPercent3.toFixed(2);
				
					
					$("#profitPercent3").text(profitPercent3);
		        } if (money >= 50001 && money <= 95000) {
		        	var profitPercent3 = 1850;
					var profitPercent3 = profitPercent3.toFixed(2);
					

					$("#profitPercent3").text(profitPercent3);
		        
		        } 
		        
		

	}
	if($("#money3").length){
		calc3();
	}
	$("#money3").keyup(function(){
		calc3();
	});
	
	


});

