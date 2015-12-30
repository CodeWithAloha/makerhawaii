import Vue from 'vue';
import title from './components/title.vue';
import intro from './components/intro.vue';
import map from './components/map.vue';
import spaces from './components/spaces.vue';
import space from './components/space.vue';

new Vue({
  el: 'body',
  components: {title,intro,map,spaces,space},
});
Vue.config.debug = false;
