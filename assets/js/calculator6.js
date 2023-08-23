$(document).ready(function(){

	var minMoney 	= [1000];
	var maxMoney	= [95000 ];
	$("#money5").val(minMoney[0]);
	console.log($("#money5").val(minMoney[0]));
	
  	//Calculator
	function calc5(){
		var money = parseFloat($("#money5").val());
	
		        if( (money >= 1000 && money <= 3000)){
		        	var profitTotal5 = money / 100 * 225;
					var profitTotal5 = profitTotal5.toFixed(2);

					$("#profitTotal5").text(profitTotal5);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitTotal5 = money / 100 * 1400;
					var profitTotal5 = profitTotal5.toFixed(2);

					$("#profitTotal5").text(profitTotal5);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitTotal5 = money / 100 * 2850;
					var profitTotal5 = profitTotal5.toFixed(2);
					
					$("#profitTotal5").text(profitTotal5);
		        } if (money >= 10001 && money <= 40000) {
		        	var profitTotal5 = money / 100 * 4750;
					var profitTotal5 = profitTotal5.toFixed(2);
				
					
					$("#profitTotal5").text(profitTotal5);
		        } if (money >= 40001 && money <= 95000) {
		        	var profitTotal5 = money / 100 * 7000;
					var profitTotal5 = profitTotal5.toFixed(2);
					

					$("#profitTotal5").text(profitTotal5);
		        
		        } 
		        
		     
		    
		        if( (money >= 1000 && money <= 3000)){
		        	var profitPercent5 = 225;
					var profitPercent5 = profitPercent5.toFixed(2);

					$("#profitPercent5").text(profitPercent5);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitPercent5 = 1400;
					var profitPercent5 = profitPercent5.toFixed(2);

					$("#profitPercent5").text(profitPercent5);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitPercent5 = 2850;
					var profitPercent5 = profitPercent5.toFixed(2);
					
					$("#profitPercent5").text(profitPercent5);
		        } if (money >= 10001 && money <= 40000) {
		        	var profitPercent5 = 4750;
					var profitPercent5 = profitPercent5.toFixed(2);
				
					
					$("#profitPercent5").text(profitPercent5);
		        } if (money >= 40001 && money <= 95000) {
		        	var profitPercent5 = 7000;
					var profitPercent5 = profitPercent5.toFixed(2);
					

					$("#profitPercent5").text(profitPercent5);
		        
		        } 
		        
		

	}
	if($("#money5").length){
		calc5();
	}
	$("#money5").keyup(function(){
		calc5();
	});
	
	


});

