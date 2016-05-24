<script>
  import {MAPBOX_API_KEY} from './config/mapbox.js';

  import {MAKER_STORE} from '../stores/maker_store.js';

  export default {
    data() {
      return {
        markers: {},
        spaces: {},
        active: false,
        markers_added: false,
        map_loaded: false
      }
    },
    methods: {
      add_markers(val, markers) {
        if(!this.$data.map_loaded) {
          return
        }

        Object.assign(this.$data, {markers_added: true})
        val.forEach((space) => {

          const { lng, lat} = space.location

          markers.features =
            markers.features.concat([
              {
                type: "Feature",
                geometry: {
                  type: "Point",
                  coordinates: [lng, lat]
                },
                properties: {
                  ID: space.ID
                }
              }
            ])

          Object.assign(this.$data.markers, {
            [space.ID]: [lng, lat]
          });

          Object.assign(this.$data.spaces, {
            [space.ID]: space
          })
        });
      }
    },
    attached() {
      // instantiate map client
      require(['mapbox-gl/dist/mapbox-gl.js'], (mapbox) => {
        const {
          Map,
          Navigation
        } = mapbox;
        mapbox.accessToken = MAPBOX_API_KEY;

        const center = [-157.371200, 20.865516]
        this.map = new Map({
          container: this.$el,
          center,
          zoom: 6,
          style: 'mapbox://styles/russellvea2/cihib8squ00tdjnkx9bwq8tvt'
        });

        const markers = {
          type: "FeatureCollection",
          features: []
        }

        this.map.addControl(new Navigation());

        this.map.on('load', () => {

          Object.assign(this.$data, {map_loaded: true})

          if(this.$data.markers_added === false) {
            const makerspaces =
              MAKER_STORE
                .reference('makerspaces')
                .cursor()
                .deref()
            this.add_markers(makerspaces, markers)
          }

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

        this.map.on('click', (e) => {
          this.map.featuresAt(e.point, {
            layer: 'markers',
            radius: 10,
            includeGeometry: true
          }, (err, features) => {

            if(err) {
              throw err;
            }

            if(features.length === 0) {
              return;
            }

            const space = this.$data.spaces[features[0].properties.ID];

            MAKER_STORE
              .cursor('scrolled_space')
              .update(() => space);

            MAKER_STORE
              .cursor('active_space')
              .update(() => space);
          })
        });

        // change map view
        MAKER_STORE
          .reference('active_space')
          .observe((val) => {
            if(!val) {
              Object.assign(this.$data, {active: false});
              return
            }

            Object.assign(this.$data, {active: true});
            let latlng = this.$data.markers[val.ID];
            this.map.setZoom(13);
            this.map.panTo(latlng);
        });
      })
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
        height: 100%;
        width: 50%;
      }
      z-index: 2;
      height: 250px;
      margin-bottom: 2px;
    }
  }
</style>

<style src="mapbox-gl/dist/mapbox-gl.css"></style>
