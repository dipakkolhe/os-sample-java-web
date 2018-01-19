<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Marker animations with <code>setTimeout()</code></title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #floating-panel {
        position: absolute;
        top: 8px;
        left: 62px;
        z-index: 5;
        background-color: #fff;
        padding: 10px;
        border: 1px solid #999;
        text-align: Left;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
      #floating-panel {
        margin-left: -52px;
      }
    </style>
  </head>
  <body>
    
	
	 <div id="floating-panel">
      <button id="drop" onclick="drop()">All</button><br/>
	   <button id="drop" onclick="drop1()">COEP Academic Complex</button><br/>
	     <button id="drop" onclick="drop2()">Electrical Engineering Department</button><br/>
		   <button id="drop" onclick="drop3()">COEP H-Block</button><br/>
		     <button id="drop" onclick="drop4()">COEP Ground</button><br/>
  </div> <div id="map">sa</div> 
    
    <script>

      // If you're adding a number of markers, you may want to drop them on the map
      // consecutively rather than all at once. This example shows how to use
      // window.setTimeout() to space your markers' animation.

      var neighborhoods = [
        {lat: 18.5312905, lng: 73.8557817},
        {lat: 18.5294413, lng: 73.8557357},
        {lat: 18.5294811, lng: 73.8512383},
        {lat: 18.5280529, lng: 73.853224}
      ];
	  
	   var neighborhoods1 = [
        {lat: 18.5312905, lng: 73.8557817} 
      ];
	  
	   var neighborhoods2 = [ 
        {lat: 18.5294413, lng: 73.8557357} 
      ];
	  
	  
	   var neighborhoods3 = [ 
        {lat: 18.5294811, lng: 73.8512383} 
      ];
	  
	   var neighborhoods4 = [
        {lat: 18.5280529, lng: 73.853224}
      ];

      var markers = [];
      var map;

      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 17,
          center: {lat: 18.5312905, lng: 73.8557817}		  
        });
      }

      function drop() {
        clearMarkers();
        for (var i = 0; i < neighborhoods.length; i++) {
          addMarkerWithTimeout(neighborhoods[i], i * 200);
        }
      }


  function drop1() {
        clearMarkers();
        for (var i = 0; i < neighborhoods1.length; i++) {
          addMarkerWithTimeout(neighborhoods1[i], i * 200);
        }
      }
	  
	    function drop2() {
        clearMarkers();
        for (var i = 0; i < neighborhoods2.length; i++) {
          addMarkerWithTimeout(neighborhoods2[i], i * 200);
        }
      }
	  
	  
	   function drop3() {
        clearMarkers();
        for (var i = 0; i < neighborhoods3.length; i++) {
          addMarkerWithTimeout(neighborhoods3[i], i * 200);
        }
      }
	  
	   function drop4() {
        clearMarkers();
        for (var i = 0; i < neighborhoods4.length; i++) {
          addMarkerWithTimeout(neighborhoods4[i], i * 200);
        }
      }
	  
      function addMarkerWithTimeout(position, timeout) {
        window.setTimeout(function() {
          markers.push(new google.maps.Marker({
            position: position,
            map: map,
            animation: google.maps.Animation.DROP
          }));
        }, timeout);
      }

      function clearMarkers() {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(null);
        }
        markers = [];
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIqcg8jEnM8W_aQubCCHl8FfRVGZUZDuA&callback=initMap">
    </script>
  </body>
</html> 
