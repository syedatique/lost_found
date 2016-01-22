// Here, we get the coordinates by entering an address into an input field.

function codeAddress(geocoding, resultsMap){
  var address = $("#map-canvas").data("lostlocation-data");
  console.log(address);
  geocoding.geocode({'address': address},function(results, status){
    if(status === google.maps.GeocoderStatus.OK){
      resultsMap.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
        map: resultsMap,
        position: results[0].geometry.location
        });
      console.log('hiiii');
    } else {
        alert("Geocode was not successful for the following reason: " + status);
    };
  });
};



$(function(){

  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    zoom: 12,
    center: {lat: -34.397, lng: 150.644}
  });
  var geocoding  = new google.maps.Geocoder();
  codeAddress(geocoding, map);
  
});











