var menuBar = document.getElementById("menuBar");
var topMenu = document.getElementById("topMenu");
menuBar.addEventListener("click",function(){
	console.log("dd")
	if(topMenu.style.visibility == "hidden") {
		topMenu.style.visibility = "visible";
	} else {
		topMenu.style.visibility = "hidden"
	}
}) 
