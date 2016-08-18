<?php
  global $post;
  $context = Timber::get_context();
  $post = get_post($_GET['id']);
  $context['post'] = $post;
  Timber::render('update_form.twig', $context);
?>
