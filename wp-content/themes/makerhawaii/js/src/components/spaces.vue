<script>
  import space from './space.vue';
  import {MAKER_STORE} from '../stores/maker_store.js';
  import {syncData} from '../decorators/update_data.js';
  import SweetScroll from 'sweet-scroll';

  export default {
    created() {
      syncData(this);
      MAKER_STORE
        .reference('scrolled_space')
        .observe((space) => {
          // scroll to space if clicked on mapj
          if(space !== this.$data.active_space)  {

            // prevent Waypoint from triggering while scrolling
            MAKER_STORE
              .cursor('scrolling')
              .update(() => true)

            const scroll = new SweetScroll({
              afterScroll() {
                MAKER_STORE
                  .cursor('scrolling')
                  .update(() => false);
              }
            })

            // if on mobile, scroll element to top
            // if desktop scroll it to middle
            const is_mobile =
              MAKER_STORE
                .cursor('mobile')
                .deref()

            const elm = document.getElementById(`space-${space.ID}`)
            const offset = (is_mobile) ? -40 :
              ((window.innerHeight / 3) * -1);
            scroll.toElement(elm, {offset});
          }
        });
    },
    components: {space},
  }
</script>

<template>
  <section class="container space__item-container">
    <space
      v-for="space in makerspaces"
      class="space__item"
      id="space-{{space.ID}}"
      :space="space"
      :class="{'space__item--active':
        active_space && active_space.ID == space.ID}">
    </space>
  </section>
</template>
