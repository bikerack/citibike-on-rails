
$(document).ready(function() {
    
    function getLocation() {
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
      }
      else { 
        $('#error').text('Geolocation is not supported by this browser');
      }
    }
    function showPosition(position) {
        $('#trip_origin_latitude').val(position.coords.latitude);
        $('#trip_origin_longitude').val(position.coords.longitude);
      }
    
    getLocation();
    
});
