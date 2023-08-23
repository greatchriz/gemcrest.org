$(document).ready(function(){

	var minMoney 	= [501];
	var maxMoney	= [95000 ];
	$("#money1").val(minMoney[0]);
	console.log($("#money1").val(minMoney[0]));
	
  	//Calculator
	function calc1(){
		var money = parseFloat($("#money1").val());
	
		        if( (money >= 501 && money <= 3000)){
		        	var profitTotal1 = money / 100 * 105;
					var profitTotal1 = profitTotal1.toFixed(2);

					$("#profitTotal1").text(profitTotal1);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitTotal1 = money / 100 * 160;
					var profitTotal1 = profitTotal1.toFixed(2);

					$("#profitTotal1").text(profitTotal1);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitTotal1 = money / 100 * 230;
					var profitTotal1 = profitTotal1.toFixed(2);
					
					$("#profitTotal1").text(profitTotal1);
		        } if (money >= 10001 && money <= 30000) {
		        	var profitTotal1 = money / 100 * 310;
					var profitTotal1 = profitTotal1.toFixed(2);
				
					
					$("#profitTotal1").text(profitTotal1);
		        } if (money >= 30001 && money <= 95000) {
		        	var profitTotal1 = money / 100 * 450;
					var profitTotal1 = profitTotal1.toFixed(2);
					

					$("#profitTotal1").text(profitTotal1);
		        
		        } 
		        
		     
		    
		        if( (money >= 501 && money <= 3000)){
		        	var profitPercent1 = 105;
					var profitPercent1 = profitPercent1.toFixed(2);

					$("#profitPercent1").text(profitPercent1);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitPercent1 = 160;
					var profitPercent1 = profitPercent1.toFixed(2);

					$("#profitPercent1").text(profitPercent1);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitPercent1 = 230;
					var profitPercent1 = profitPercent1.toFixed(2);
					
					$("#profitPercent1").text(profitPercent1);
		        } if (money >= 10001 && money <= 30000) {
		        	var profitPercent1 = 310;
					var profitPercent1 = profitPercent1.toFixed(2);
				
					
					$("#profitPercent1").text(profitPercent1);
		        } if (money >= 30001 && money <= 95000) {
		        	var profitPercent1 = 450;
					var profitPercent1 = profitPercent1.toFixed(2);
					

					$("#profitPercent1").text(profitPercent1);
		        
		        } 
		        
		

	}
	if($("#money1").length){
		calc1();
	}
	$("#money1").keyup(function(){
		calc1();
	});
	
	


});

