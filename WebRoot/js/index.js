
$(document).ready(function(){
	$("#we").hide();
	var ishide=false;
	function dohide(){
		if(ishide)
			$("#we").hide();
	}
	
	$("#weshare").hover(function(){
		$("#we").show();
		ishide=false;
	},function(){
		ishide=true;
		window.clearTimeout(t);
		var t=window.setTimeout(dohide,1000);
	});
	
	$("#we").hover(function(){ 
     ishide = false; 
    },function(){
     ishide = true; 
     window.clearTimeout(t);
     var t = window.setTimeout(dohide,1000);
    });
});

/**
 * 购物车的鼠标滑动效果
 */
$(document).ready(function(){
	
   $(".goods").hover(function(){
  $(this).find("span").stop().animate({top: '220px'},200);
},function(){
  $(this).find("span").stop().animate({top: '260px'},200);
})
  $(".goods1").hover(function(){
  $(this).find("span").stop().animate({top: '150px'},200);
},function(){
  $(this).find("span").stop().animate({top: '260px'},200);
})



});











