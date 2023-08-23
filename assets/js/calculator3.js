$(document).ready(function(){

	var minMoney 	= [1000];
	var maxMoney	= [90000 ];
	$("#money2").val(minMoney[0]);
	console.log($("#money2").val(minMoney[0]));
	
  	//Calculator
	function calc2(){
		var money = parseFloat($("#money2").val());
	
		        if( (money >= 1000 && money <= 3000)){
		        	var profitTotal2 = money / 100 * 111;
					var profitTotal2 = profitTotal2.toFixed(2);

					$("#profitTotal2").text(profitTotal2);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitTotal2 = money / 100 * 260;
					var profitTotal2 = profitTotal2.toFixed(2);

					$("#profitTotal2").text(profitTotal2);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitTotal2 = money / 100 * 440;
					var profitTotal2 = profitTotal2.toFixed(2);
					
					$("#profitTotal2").text(profitTotal2);
		        } if (money >= 10001 && money <= 45000) {
		        	var profitTotal2 = money / 100 * 750;
					var profitTotal2 = profitTotal2.toFixed(2);
				
					
					$("#profitTotal2").text(profitTotal2);
		        } if (money >= 45001 && money <= 90000) {
		        	var profitTotal2 = money / 100 * 900;
					var profitTotal2 = profitTotal2.toFixed(2);
					

					$("#profitTotal2").text(profitTotal2);
		        
		        } 
		        
		     
		    
		        if( (money >= 1000 && money <= 3000)){
		        	var profitPercent2 = 111;
					var profitPercent2 = profitPercent2.toFixed(2);

					$("#profitPercent2").text(profitPercent2);
		        } if (money >= 3001 && money <= 5000) {
		        	var profitPercent2 = 260;
					var profitPercent2 = profitPercent2.toFixed(2);

					$("#profitPercent2").text(profitPercent2);
		        } if (money >= 5001 && money <= 10000) {
		        	var profitPercent2 = 440;
					var profitPercent2 = profitPercent2.toFixed(2);
					
					$("#profitPercent2").text(profitPercent2);
		        } if (money >= 10001 && money <= 45000) {
		        	var profitPercent2 = 750;
					var profitPercent2 = profitPercent2.toFixed(2);
				
					
					$("#profitPercent2").text(profitPercent2);
		        } if (money >= 45001 && money <= 90000) {
		        	var profitPercent2 = 900;
					var profitPercent2 = profitPercent2.toFixed(2);
					

					$("#profitPercent2").text(profitPercent2);
		        
		        } 
		        
		

	}
	if($("#money2").length){
		calc2();
	}
	$("#money2").keyup(function(){
		calc2();
	});
	
	


});

