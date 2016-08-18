<?php
  Routes::map('/makerspaces', function() {
    Routes::load('makerspaces.php');
  });

  Routes::map('/update_makerspace', function () {
    Routes::load('update.php');
  });
?>
