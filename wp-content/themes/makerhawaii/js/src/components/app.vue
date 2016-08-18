<script>
  import title from './title.vue';
  import intro from './intro.vue';
  import map from './map.vue';
  import spaces from './spaces.vue';

  export default {
    components: {
      title,
      intro,
      map,
      spaces
    },
  }
</script>

<template>
  <intro></intro>
  <spaces></spaces>
  <section class="map__container">
    <map></map>
  </section>
</template>

<style src="../styles/config/colors.css"></style>
<style src="../styles/config/structure.css"></style>
