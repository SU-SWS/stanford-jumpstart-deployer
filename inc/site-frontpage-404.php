<?php
$home = drupal_lookup_path('source', 'home');
variable_set('site_frontpage', $home);
$page_not_found = drupal_lookup_path('source', '404');
variable_set('site_404', $page_not_found);

?>
