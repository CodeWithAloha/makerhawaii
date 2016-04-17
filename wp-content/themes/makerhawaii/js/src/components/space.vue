<script>
  require('waypoints/lib/noframework.waypoints.js');
  import {MAKER_STORE} from '../stores/maker_store.js';

  export default {
    props:  ['space'],
    attached() {

      const body = document.querySelector('body')

      new Waypoint({
        element: this.$el,
        offset: '40%',
        handler: (scrolled) => {


          const scrolling =
            MAKER_STORE
              .cursor('scrolling')
              .deref();

          if(scrolling === true) {
            return;
          }

          if(scrolled === 'down') {
            MAKER_STORE
              .cursor('active_space')
              .update(() => this.space)

            MAKER_STORE
              .cursor('scrolled_space')
              .update(() => this.space);
           }
         }
      });

      new Waypoint({
        element: this.$el,
        offset: (body.offsetWidth < 1280) ? '0%' : '20%',
        handler: (scrolled) => {

          const scrolling =
            MAKER_STORE
              .cursor('scrolling')
              .deref();

            if(scrolling) {
              return true;
            }

          if(scrolled === 'up') {
            MAKER_STORE
              .cursor('active_space')
              .update(() => this.space)


            MAKER_STORE
              .cursor('scrolled_space')
              .update(() => this.space);
          }
        }
      });
    }
  }
</script>

<template>
  <div>
    <h1 class="space__title">{{space.post_title}}</h1>

    <div class="space__info">
      <h3 class="space__subtitle space__text--bold">Address</h3>
      <p class="space__text">{{space.location.address}}</p>
    </div>

    <div class="space__info" v-if="space.membership_info">
      <h3 class="space__subtitle space__text--bold">Membership Info</h3>
      <p class="space__text">{{space.membership_info}}</p>
    </div>

    <div class="space__info" v-if="space.howtovisit">
      <h3 class="space__subtitle space__text--bold">How To Visit</h3>
      <p class="space__text">{{space.howtovisit}}</p>
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

<style scoped>
  @import 'normalize.css';
  @import "colors.css/myth/variables.css";

  .space {
     &__title {
      font-size: 1.8em;
      margin-bottom: 0;
      font-family: Raleway;
    }

    &__subtitle {
      margin-bottom: 0;
      font-family: Lobster;
    }

    &__item {
      min-height: 600px;
      min-height: 100vh;
      @nest &:last-of-type {
        min-height: 0px;
        padding-bottom: 50vh;
      }
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

    &__link {
      word-wrap: break-word;
    }

    &__text:nth-of-type(1) {
      margin-top: 4px;
    }

  }
</style>
