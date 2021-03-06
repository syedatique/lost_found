// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require social-share-button
//= require gmap
//= require_tree .



$(function(){
  var map = new google.maps.Map(document.getElementById('map-canvas'), {
    zoom: 15,
    center: {lat: -34.397, lng: 150.644}
  });
  var geocoding  = new google.maps.Geocoder();
  codeAddress(geocoding, map);

  // $( "#datepicker" ).datepicker();
});
