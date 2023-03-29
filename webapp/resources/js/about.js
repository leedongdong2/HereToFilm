/**
 * 
 */

var topPos = $("#imageZone").position().top;

$("#about").click(function(){
$('body,html').animate({scrollTop:topPos},1000);
});

// 안드로이드 우측 버튼 비활성
$(document).bind("contextmenu", function(e) {
	return false;
});

$(window).load(function(){
	$("#imageZone").masonry({
		itemSelector:'.gridItem',
		columnCount:4,
		isFitWidth: true
	})	
})

