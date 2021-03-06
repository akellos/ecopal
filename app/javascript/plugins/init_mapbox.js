import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/missevia/cjzve3uwy0l121dpkghs1xrst'
  });
};

const addMarkersToMap = (map, markers) => {
 markers.forEach((marker) => {

  const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

  // Create a HTML element for your custom marker
  const element = document.createElement('div');
  element.className = 'marker';
  // element.style.backgroundImage = "url('ecopal_marker.png')";
  element.style.backgroundSize = 'contain';
  element.style.width = '50px';
  element.style.height = '50px';

  // Pass the element as an argument to the new marker
  new mapboxgl.Marker(element)
    .setLngLat([marker.lng, marker.lat])
    .setPopup(popup)
    .addTo(map);
});
};



const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, placeholder: "Search ecopals by city" }));
  }
};


export { initMapbox };
