<template>
  <section class="space__item-container">
    <article class="space__item" v-for="space in makerspaces" data-lat="{{space.address.lat}}" data-lng="{{space.address.lng}}">
      <h1 class="space__title">{{space.post_title}}</h1>

      <div class="space__info" v-if="space.membership_info">
        <h3 class="space__text--bold">Membership Info</h3>
        <p class="space__text">{{space.membership_info}}</p>
      </div>

      <div class="space__info" v-if="space.classes">
        <h3 class="space__text--bold">Classes</h3>
        <p class="space__text">{{space.classes}}</p>
      </div>

      <div class="space__info" v-if="space.website">
        <h3 class="space__text--bold">Website</h3>
        <p class="space__text"><a target="_blank" href="{{space.website}}">{{space.website}}</a></p>
      </div>

    </article>
  </section>
</template>
<script>
  import Vue from 'vue';
  import Waypoint from 'waypoints/lib/noframework.waypoints.js';

  export default {
    created() {
      let req = new XMLHttpRequest();
      req.open('GET', '/makerspaces', true);
      req.send();
      req.onload = () => {
        // console.log(JSON.parse(req.responseText));
        Vue.set(this.$data, 'makerspaces',
          JSON.parse(req.responseText)
        );
      }
    },
    watch() {
      return {
        makerspaces: (val) => {
          console.log(val);
          if(val) {
            console.log(val);
          }
        }
      }
    },
    data() {
      return {
        makerspaces: []
      }
    }

  }
</script>

<style>
  .space {
    @nest &__item {
      min-height: 100%;
      @nest &-container {
        height: calc(100vh - 260px);
        overflow: scroll;
        padding: 0 10px;
      }
    }

    @nest &-text {
      margin: 0;
      @nest &--bold {
        font-weight: 600;
        margin-bottom: 4px;
      }
    }
  }

</style>
