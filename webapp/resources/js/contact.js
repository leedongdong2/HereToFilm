var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.503033319675225, 127.03063039654106),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
function setDraggable(draggable) {
    // 마우스 드래그로 지도 이동 가능여부를 설정합니다
    map.setDraggable(draggable);    
}

var markerPosition = new kakao.maps.LatLng(37.503033319675225, 127.03063039654106);

var marker = new kakao.maps.Marker({
    position: markerPosition
});

marker.setMap(map);

$(window).resize(function(){
	map.relayout();
	map.setCenter(markerPosition);
})    
   
