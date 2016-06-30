core = 7.x
api = 2

libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://web.stanford.edu/group/webservices/simplepie.compiled.php"
libraries[simplepie][download][filename] = "simplepie.compiled.php"
libraries[simplepie][destination] = "libraries"

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer.git"
libraries[stanford_sites_content_importer][download][branch] = "7.x-1.x"
libraries[stanford_sites_content_importer][destination] = "libraries"

; Until Stanford Drupal profile gets updated.
; https://github.com/SU-SWS/Stanford-Drupal-Profile/pull/56/files
libraries[dompdf][download][url] = https://github.com/dompdf/dompdf/releases/download/v0.6.2/dompdf-0.6.2.zip
