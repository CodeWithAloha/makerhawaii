<script>
  import {MAPBOX_API_KEY} from './config/mapbox.js';
  import mapbox from 'mapbox-gl/dist/mapbox-gl.js';
  const {Map, Navigation} = mapbox;
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
      mapbox.accessToken = MAPBOX_API_KEY;

      const center = [-157.9415345585941, 21.392663115780692];
      this.map = new Map({
        container: this.$el,
        center,
        zoom: 9,
        style: 'mapbox://styles/russellvea2/cihib8squ00tdjnkx9bwq8tvt'
      });

      const markers = {
        type: "FeatureCollection",
        features: []
      }

      this.map.addControl(new Navigation());

      this.map.on('load', () => {
        this.map.addSource("markers", {
          type: "geojson",
          data: markers
        })

        this.map.addLayer({
          id: "markers",
          interactive: true,
          type: "symbol",
          source: "markers",
          layout: {
            "icon-image": "star-15"
          }
        })
      });



      // add markers when they're instantiated
      MAKER_STORE
        .reference('makerspaces')
        .observe((val) => {
          val.forEach((space) => {
            let {lat, lng} = space.location;
            let latlng = [lng, lat];
            markers.features =
              markers.features.concat([
                {
                  type: "Feature",
                  geometry: {
                    type: "Point",
                    coordinates: latlng
                  }
                }
              ])
            Object.assign(this.$data.markers, {
              [space.ID]: latlng
            });
          });
        });

      // change map view
      MAKER_STORE
        .reference('active_space')
        .observe((val) => {
          if(val) {
            Object.assign(this.$data, {active: true});
          }

          let latlng = this.$data.markers[val.ID];
          this.map.setZoom(13);
          this.map.panTo(latlng);
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
        position: fixed 0 auto auto 0;
        height: calc(100vh - 50px);
        width: 50%;
      }
      z-index: 2;
      height: 250px;
      margin-bottom: 2px;
    }
  }
</style>

<style src="mapbox-gl/dist/mapbox-gl.css"></style>
