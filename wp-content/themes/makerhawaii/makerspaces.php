<?php
  $args = array(
    'post_type' => 'makerspace',
    'posts_per_page' => -1,
    'orderby' => 'menu_order',
    'order' => 'ASC'
  );
  $spaces = Timber::get_posts($args);
  function fetch_terms($post) {
    $post->tags = $post->terms('maker_tag');
    $post->types = $post->terms('maker_type');
    return $post;
  }
  $spaces = array_map('fetch_terms', $spaces);
  die(json_encode($spaces));
?>
