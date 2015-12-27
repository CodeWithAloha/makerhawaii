<script>
  import Vue from 'vue';
  import {MAKER_STORE} from '../stores/maker_store.js';
  import space from './space.vue';

  export default {
    created() {
      MAKER_STORE.on('add', (val, key) => {
        Vue.set(this.$data, key, val);
      });
      MAKER_STORE.on('change', (val, old, key) => {
        Vue.set(this.$data, key, val);
      });
    },
    components: {space},
    data() {
      return {
        makerspaces: [],
        active_space: null
      }
    }
  }
</script>

<template>
  <map></map>
  <section class="space__item-container">
    <space
      v-for="space in makerspaces"
      class="space__item"
      :space="space"
      :class="{'space__item--active': active_space && active_space.ID == space.ID}">
    </space>
  </section>
</template>
