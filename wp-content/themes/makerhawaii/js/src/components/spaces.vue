<script>
  import space from './space.vue';
  import {syncData} from '../decorators/update_data.js';

  export default {
    created() { syncData(this) },
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
  <section class="container space__item-container">
    <space
      v-for="space in makerspaces"
      class="space__item"
      :space="space"
      :class="{'space__item--active':
        active_space && active_space.ID == space.ID}">
    </space>
  </section>
</template>
