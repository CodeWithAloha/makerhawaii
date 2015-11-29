<script>
  import MapboxClient from 'mapbox';
  import {MAPBOX_API_KEY} from './config/mapbox.js';
  import mapbox from 'mapbox.js';
  import {MAKER_STORE} from '../stores/maker_store.js';

  export default {
    attached() {
      this.client = new MapboxClient(MAPBOX_API_KEY);
      L.mapbox.accessToken = MAPBOX_API_KEY;
      this.map = L.mapbox.map(
        this.$el.querySelector('.map'), 'russellvea2.nl7ij7em');
      this.map.setZoom(5);
      MAKER_STORE.on('add', (val, key) => {
        if(key[0] === 'makerspaces') {
          val.forEach((space) => {
            let {lat, lng} = space.address;
            new L.marker([lat,lng]).addTo(this.map);
          });
        }
      });
    },
  }
</script>
<template>
  <div class="map__container">
    <div class="map"></div>
  </div>
</template>
<style src="mapbox.js/theme/style.css"></style>
