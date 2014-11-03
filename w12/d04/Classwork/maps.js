<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?api_key=AIzaSyAccMdPuDvaAGvXzwJemlq5ZNJjNxEvEec">
</script>

var startLat= 40.790278
var startLng= -73.959722


var endLat= 40.678178
var endLng= -73.944158


var request = {
	origin: startLat.toString()+,+startLng.toString(),
	destination: endLat.toString()+,endLng.toString(),
	travelMode = TravelMode.BICYCLING


// {
//   origin: LatLng | String,
//   destination: LatLng | String,
//   travelMode: TravelMode,
//   transitOptions: TransitOptions,
//   unitSystem: UnitSystem,
//   durationInTraffic: Boolean,
//   waypoints[]: DirectionsWaypoint,
//   optimizeWaypoints: Boolean,
//   provideRouteAlternatives: Boolean,
//   avoidHighways: Boolean,
//   avoidTolls: Boolean
//   region: String

//   }

  // directionsRequest.travelMode = TravelMode.TRANSIT

// FORMAT?  travelMode is google.maps.TravelMode.TRANSIT. 
// directionsRequest.travelMode = TravelMode.WALKING
// DirectionsRequest object literal contains the following fields:


DirectionsService(request)

var directionsDisplay;
var diresctionsService = new google.maps.DirectionsService();
var map

function initialize(){
	directionsDisplay = new google.maps.DirectionsService();
	var startPoint = new google.maps.LatLng



}