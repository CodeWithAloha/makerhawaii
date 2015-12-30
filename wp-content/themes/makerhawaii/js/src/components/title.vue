<template>
  <header class="header">
    <nav class="header__nav"><a class="header__title" href="/">
      <span v-if="active_space != null">{{active_space.post_title}}</span>
      <span v-if="active_space == null">{{title}}</span>
    </a></nav>
  </header>
</template>

<style>
  @import "normalize.css";
  @import "colors.css/myth/variables.css";
  @import '../styles/config/structure.css';

  .header {
    z-index: 1;
    position: fixed 0 0 auto 0;
    background: var(--green);
    padding: 8px 10px;
    text-align: center;
    @nest &__title {
      font-size: 32px;
      color: white;
      text-decoration: none;
    }
  }
</style>


<script>
  import {syncData} from '../decorators/update_data.js';

  export default {
    data() {
      return {
        title: 'Maker Hawaii'
      }
    },
    created() {
      syncData(this);
    }
  }
</script>
