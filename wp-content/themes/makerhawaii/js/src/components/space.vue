<script>
  import Waypoint from 'waypoints/lib/noframework.waypoints.js';

  export default {
    props:  ['space', 'active'],
  }
</script>

<template>
  <div>
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
      <p class="space__text">
        <a target="_blank"
           href="{{space.website}}">
           {{space.website}}
        </a>
      </p>
    </div>
  </div>
</template>

<style></style>
