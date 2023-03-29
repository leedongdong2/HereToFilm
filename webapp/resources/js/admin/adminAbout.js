/**
 * 
 */

$("#adminAboutSave").click(function(){
	var form = document.aboutInsertForm;
	var data = new FormData(form);
	$.ajax({
		type : "POST",
		data : data,
		dataType : "json",
		enctype : "multipart/form-data",
		contentType : false,
		processData : false,
		url : "adminAboutInsert.main",
		success : function(resp){
			if(resp.result == "true") {
				alert("성공");
			} else {
				alert("실패");
			}
		}
		
	})
})