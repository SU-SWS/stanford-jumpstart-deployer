 <?php
// set our pathologic local paths to "/" and the full site URL (with trailing slash)
global $base_url;
$subdir = str_replace('https://sites.stanford.edu', '', $base_url) . '/';
$settings = serialize(array(
  'local_paths' => $subdir,
  'protocol_style' => 'full',
));
db_merge('filter')
  ->key(array(
    'format' => 'content_editor_text_format',
    'name' => 'pathologic',
  ))
  ->fields(array(
    'settings' => $settings,
  ))
  ->execute();

?>
