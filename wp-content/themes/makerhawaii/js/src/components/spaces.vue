<script>
  import Vue from 'vue';
  import {MAKER_STORE} from '../stores/maker_store.js';

  export default {
    created() {
      MAKER_STORE.on('add', (val, key) => {
        Vue.set(this.$data, key, val);
      });
    },
    data() {
      return {
        makerspaces: [],
        active_space: null
      }
    }
  }
</script>

<template>
  <section class="space__item-container">
    <article
      class="space__item"
      v-for="space in makerspaces"
      :class="{'space__item--active': active_space && (space.id === active_space.id)}">
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
    </article>
  </section>
</template>

<style>
  .space {
    @nest &__item {
      min-height: 100%;

      @nest &--active {
        background: #AAA;
      }

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
