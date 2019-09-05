import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


$('#scroll-home').on('click', function(e) {
  e.preventDefault()

  $('html, body').animate(
    {
      scrollTop: $('#hello').offset().top,
    },
    1000,
    'linear'
  )
})

$('#about-landing').on('click', function(e) {
  e.preventDefault()

  $('html, body').animate(
    {
      scrollTop: $('#about-section').offset().top,
    },
    1000,
    'linear'
  )
})



