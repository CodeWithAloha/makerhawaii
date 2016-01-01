<template>
  <header class="header">
    <nav class="header__nav">
      <a class="header__title" href="/">{{title}}</a>
  </nav>
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
    text-align: center;
    backface-visibility: hidden;
    height: 50px;
    @nest &__nav {
      min-height: 33px;
      width: 100%;
      padding: 8px 10px;
    }
    @nest &__title {
      font-size: 28px;
      font-family: Raleway;
      color: white;
      text-decoration: none;
      width: 100%;
    }
  }
</style>


<script>
  import {syncData} from '../decorators/update_data.js';

  export default {
    computed: {
      title: function() {
        return this.$data.active_space ?
          this.$data.active_space.post_title : 'Maker Hawaii';
      }
    },
    created() {
      syncData(this);
    }
  }
</script>
