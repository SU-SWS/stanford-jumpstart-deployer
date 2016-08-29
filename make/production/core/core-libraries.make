core = 7.x
api = 2

libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://simplepie.org/downloads/simplepie_1.3.1.compiled.php"
libraries[simplepie][download][filename] = "simplepie.compiled.php"
libraries[simplepie][destination] = "libraries"

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][tag] = "7.x-1.1-dev+1"
libraries[stanford_sites_content_importer][destination] = "libraries"

; Until Stanford Drupal profile gets updated.
; https://github.com/SU-SWS/Stanford-Drupal-Profile/pull/65/files
libraries[feeds_jsonpath_parser][download][url] = "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/jsonpath/jsonpath-0.8.1.php"
