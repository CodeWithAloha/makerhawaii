<script>
  require('waypoints/lib/noframework.waypoints.js');
  import {MAKER_STORE} from '../stores/maker_store.js';

  export default {
    props:  ['space'],
    attached() {
      new Waypoint({
        element: this.$el,
        offset: 'bottom-in-view',
        handler: (scrolled) => {
          MAKER_STORE.cursor(['active_space']).update(() => {
            return this.space;
          });
        }
      });
    }
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

<style>
  @import 'normalize.css';
  @import "colors.css/myth/variables.css";

  .space {
    @nest &__item {
      min-height: 100%;
      padding: 10px 8px;
      transition: opacity 1.2s ease;
      opacity: 0.4;

      @nest &--active {
        opacity: 1;
      }

      @nest &-container {
        padding: 0 10px;
        margin-top: 256px;
      }
    }

  }
</style>
