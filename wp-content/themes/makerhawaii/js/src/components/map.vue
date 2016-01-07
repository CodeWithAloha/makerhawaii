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
      MAKER_STORE.reference('makerspaces').observe((val) => {
        val.forEach((space) => {
          let {lat, lng} = space.location;
          let marker = new L.marker([lat,lng]);
          marker.addTo(this.map);
          Object.assign(this.$data.markers, {
            [space.ID]: marker
          });
        });
      });

      // change map view
      MAKER_STORE.reference('active_space').observe((val) => {
        if(val)
          Object.assign(this.$data, {active: true});
        let marker = this.$data.markers[val.ID];
        this.map.setView(marker._latlng, 10);
      });
    },
  }
</script>

<template>
  <div class="map" :class="{'map--active': active}"></div>
</template>

<style>
  @import "colors.css/myth/variables.css";
  .map {
    height: 100%;
    transition: transform 0.5s ease;
    transform: translateY(100%);
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    @media screen and (min-width: 64em) {
      box-shadow: none;
      border-right: 2px solid var(--blue);
      transform: translateY(0);
    }
    @nest &--active {
      transform: translateY(0);
    }
    @nest &__container {
      position: fixed auto 0 0 0;
      @media screen and (min-width: 64em) {
        position: fixed 50px auto auto 0;
        height: calc(100vh - 50px);
        width: 50%;
      }
      z-index: 2;
      height: 250px;
      margin-bottom: 2px;
    }
  }
</style>
<style src="mapbox.js/theme/style.css"></style>
