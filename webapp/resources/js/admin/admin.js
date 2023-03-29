/**
 * 
 */

$(function(){
	$("#aboutImage").load("adminAbout.main");
})


//페이지이동
function adminPageMove(nowPage) {
	$("#aboutImage").load("adminAbout.main","nowPage="+nowPage);
}


