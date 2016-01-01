<script>
  require('waypoints/lib/noframework.waypoints.js');
  import {MAKER_STORE} from '../stores/maker_store.js';

  export default {
    props:  ['space'],
    attached() {
      new Waypoint({
        element: this.$el,
        offset: '25%',
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
      <h3 class="space__subtitle space__text--bold">Membership Info</h3>
      <p class="space__text">{{space.membership_info}}</p>
    </div>

    <div class="space__info" v-if="space.classes">
      <h3 class="space__subtitle space__text--bold">Classes</h3>
      <p class="space__text">{{space.classes}}</p>
    </div>

    <div class="space__info" v-if="space.website">
      <h3 class="space__subtitle space__text--bold">Website</h3>
      <p class="space__text">
        <a class="space__link"
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
    @nest &__title {
      font-size: 1.8em;
      margin-bottom: 0;
      font-family: Raleway;
    }
    @nest &__subtitle {
      margin-bottom: 0;
      font-family: Lobster;
    }
    @nest &__item {
      min-height: calc(100vh - 385px);
      transition: opacity 1.2s ease, transform 0.5s ease;
      opacity: 0.2;
      transform: scale(0.90, 0.95);
      font-family: Raleway;
      color: #494949;

      @nest &--active {
        opacity: 1;
        transform: scale(1);
      }

      @nest &-container {
        padding-bottom: 300px;
      }
    }

    @nest &__link {
      word-wrap: break-word;
    }

    @nest &__text:nth-of-type(1) {
      margin-top: 4px;
    }

  }
</style>
