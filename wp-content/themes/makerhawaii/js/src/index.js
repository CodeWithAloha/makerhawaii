import Vue from 'vue';
import app from './components/app.vue';

new Vue({
  el: 'body',
  components: {app},
});

Vue.config.debug =
  process.env.NODE_ENV != 'production';
