<?php
  global $post;
  die('wat');
  $context = Timber::get_context();
  $post = Timber::get_post($_GET['id']);
  Timber::render('update_form.twig', $context);
?>
