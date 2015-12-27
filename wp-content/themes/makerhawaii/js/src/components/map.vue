<script>
  import MapboxClient from 'mapbox';
  import {MAPBOX_API_KEY} from './config/mapbox.js';
  import mapbox from 'mapbox.js';
  import {MAKER_STORE} from '../stores/maker_store.js';
  import Vue from 'vue';

  export default {
    data: {
      markers: {}
    },
    created() {
      this.markers = {};
    },
    attached() {
      this.client = new MapboxClient(MAPBOX_API_KEY);
      L.mapbox.accessToken = MAPBOX_API_KEY;
      this.map = L.mapbox.map(
        this.$el, 'russellvea2.nl7ij7em');
      this.map.setZoom(11);
      MAKER_STORE.on('add', (val, key) => {
        if(key[0] === 'makerspaces') {
          val.forEach((space) => {
            let {lat, lng} = space.address;
            let marker = new L.marker([lat,lng]);
            marker.addTo(this.map);
            Object.assign(this.markers, {
              [space.ID]: marker
            });
          });
        }
      });
      MAKER_STORE.on('change', (val, old, key) => {
        if(val.ID) {
          let marker = this.markers[val.ID];
          this.map.panTo(marker._latlng);
          this.map.setZoom(10);

        }
      });
    },
  }
</script>

<template>
  <div class="map"></div>
</template>

<style>
  .map {
    height: 100%;
    @nest &__container {
      position: fixed;
      top: 56px;
      left: 0;
      right: 0;
      z-index: 2;
      height: 250px;
      margin-bottom: 2px;
    }
  }
</style>
<style src="mapbox.js/theme/style.css"></style>
