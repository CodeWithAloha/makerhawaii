<?php
  $context = Timber::get_context();
  $context['makerspaces'] =
    Timber::get_posts('posts_per_page=-1&post_type=makerspace');
    Timber::render('update.twig', $context);
?>
