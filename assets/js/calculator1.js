$(document).ready(function(){

	var minMoney 	= [10];
	var maxMoney	= [80000 ];
	$("#money").val(minMoney[0]);
	console.log($("#money").val(minMoney[0]));
	
  	//Calculator
	function calc(){
		var money = parseFloat($("#money").val());
	
		        if( (money >= 10 && money <= 3000)){
		        	var profitTotal = money / 100 * 101;
					var profitTotal = profitTotal.toFixed(2);

					$("#profitTotal").text(profitTotal);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitTotal = money / 100 * 104;
					var profitTotal = profitTotal.toFixed(2);

					$("#profitTotal").text(profitTotal);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitTotal = money / 100 * 108;
					var profitTotal = profitTotal.toFixed(2);
					
					$("#profitTotal").text(profitTotal);
		        } if (money >= 10001 && money <= 30000) {
		        	var profitTotal = money / 100 * 125;
					var profitTotal = profitTotal.toFixed(2);
				
					
					$("#profitTotal").text(profitTotal);
		        } if (money >= 30001 && money <= 80000) {
		        	var profitTotal = money / 100 * 130;
					var profitTotal = profitTotal.toFixed(2);
					

					$("#profitTotal").text(profitTotal);
		        
		        } 
		        
		     
		    
		        if( (money >= 10 && money <= 3000)){
		        	var profitPercent = 101;
					var profitPercent = profitPercent.toFixed(2);

					$("#profitPercent").text(profitPercent);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitPercent = 104;
					var profitPercent = profitPercent.toFixed(2);

					$("#profitPercent").text(profitPercent);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitPercent = 108;
					var profitPercent = profitPercent.toFixed(2);
					
					$("#profitPercent").text(profitPercent);
		        } if (money >= 10001 && money <= 30000) {
		        	var profitPercent = 125;
					var profitPercent = profitPercent.toFixed(2);
				
					
					$("#profitPercent").text(profitPercent);
		        } if (money >= 30001 && money <= 80000) {
		        	var profitPercent = 130;
					var profitPercent = profitPercent.toFixed(2);
					

					$("#profitPercent").text(profitPercent);
		        
		        } 
		        
		

	}
	if($("#money").length){
		calc();
	}
	$("#money").keyup(function(){
		calc();
	});
	
	


});

