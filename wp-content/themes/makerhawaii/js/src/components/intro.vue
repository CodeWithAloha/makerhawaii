<script>

  import { MAKER_STORE } from '../stores/maker_store.js'

  export default {
    data() {
      return {
        intro_text: MAKER_STORE.cursor('intro_text').deref()
      }
    }
  }
</script>

<template>
  <div class="container">
    <h1 class="title">Welcome to Maker Hawaii!</h1>
    <p class="text"> {{intro_text}} </p>
  </div>
</template>

<style scoped>
  .title, .text {
    font-family: Raleway;
  }
  .text {
    line-height: 1.5;
  }
  .container {
    margin-bottom: 30vh;
  }
</style>
