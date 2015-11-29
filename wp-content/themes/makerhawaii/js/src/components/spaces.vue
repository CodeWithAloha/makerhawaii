<script>
  import Vue from 'vue';
  import {MAKER_STORE} from '../stores/maker_store.js';
  import space from './space.vue';

  export default {
    created() {
      MAKER_STORE.on('add', (val, key) => {
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
    <article
      class="space__item"
      v-for="space in makerspaces">

      <space :space="space" active="active_space && (space.id === active_space.id)"></space>

    </article>
  </section>
</template>

<style scoped>
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
