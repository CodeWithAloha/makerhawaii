import {MAKER_STORE} from '../stores/maker_store.js';
import Vue from 'vue';

export function syncData(target) {
  MAKER_STORE.on('add', (val, key) => {
    Vue.set(target.$data, key, val);
  });
  MAKER_STORE.on('change', (val, old, key) => {
    Vue.set(target.$data, key, val);
  });
}
