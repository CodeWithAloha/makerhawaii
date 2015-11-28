<?php
  Timber::add_route('/makerspaces', function() {
    die(json_encode(Timber::get_posts('post_type=makerspace')));
  });
?>
