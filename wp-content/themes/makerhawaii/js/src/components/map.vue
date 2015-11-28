<template>
  <div class="map__container">
    <div class="map"></div>
  </div>
</template>

<script>
  import MapboxClient from 'mapbox';
  import {MAPBOX_API_KEY} from './config/mapbox.js';
  import mapbox from 'mapbox.js';

  export default {
    attached() {
      this.client = new MapboxClient(MAPBOX_API_KEY);
      L.mapbox.accessToken = MAPBOX_API_KEY;
      this.map = L.mapbox.map(this.$el.querySelector('.map'), 'russellvea2.nl7ij7em');
      this.map.setZoom(9);
    },
    data() {
      return {
        msg: 'Hello, World'
      }
    }
  }
</script>
<style src="mapbox.js/theme/style.css"></style>
