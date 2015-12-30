<script>
  import MapboxClient from 'mapbox';
  import {MAPBOX_API_KEY} from './config/mapbox.js';
  import mapbox from 'mapbox.js';
  import {MAKER_STORE} from '../stores/maker_store.js';
  import Vue from 'vue';

  export default {
    data() {
      return {
        markers: {},
        active: false
      }
    },
    attached() {
      // instantiate map client
      this.client = new MapboxClient(MAPBOX_API_KEY);
      L.mapbox.accessToken = MAPBOX_API_KEY;
      this.map = L.mapbox.map(
        this.$el, 'russellvea2.nl7ij7em');

      const HAWAII_CENTER = [21.013688, -157.537787];
      this.map.setView(HAWAII_CENTER, 6);

      // add markers when they're instantiated
      MAKER_STORE.on('add', (val, key) => {
        if(key[0] === 'makerspaces') {
          val.forEach((space) => {
            let {lat, lng} = space.address;
            let marker = new L.marker([lat,lng]);
            marker.addTo(this.map);
            Object.assign(this.$data.markers, {
              [space.ID]: marker
            });
          });
        }
        if(key[0] === 'active_space')
          Object.assign(this.$data, {active: true});
      });

      // change map view
      MAKER_STORE.on('change', (val, old, key) => {
        if(val.ID) {
          let marker = this.$data.markers[val.ID];
          this.map.setView(marker._latlng, 10);
        }
      });
    },
  }
</script>

<template>
  <div class="map" :class="{'map--active': active}"></div>
</template>

<style>
  .map {
    height: 100%;
    transition: transform 0.3s ease;
    transform: translateY(100%);
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    @nest &--active {
      transform: translateY(0);
    }
    @nest &__container {
      position: fixed;
      bottom: 0;
      left: 0;
      right: 0;
      z-index: 2;
      height: 250px;
      margin-bottom: 2px;
    }
  }
</style>
<style src="mapbox.js/theme/style.css"></style>
