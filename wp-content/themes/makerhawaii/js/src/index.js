import Vue from 'vue';
import map from './components/map.vue';
import spaces from './components/spaces.vue';
import space from './components/space.vue';

let v = new Vue({
  el: 'body',
  components: {map,spaces,space},
});
Vue.config.debug = true;
