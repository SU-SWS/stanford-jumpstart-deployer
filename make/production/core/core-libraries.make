core = 7.x
api = 2

; Libraries
; ---------

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "../../sites/all/libraries"

libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "http://malsup.github.com/jquery.cycle.all.js"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][destination] = "../../sites/all/libraries"

libraries[jw_player][download][type] = "get"
libraries[jw_player][download][url] = "https://raw2.github.com/SU-SWS/stanford_sites_libraries/jwplayer5/jwplayer.zip"
libraries[jw_player][directory_name] = "jwplayer"
libraries[jw_player][destination] = "../../sites/all/libraries"

libraries[proj4js][download][type] = "get"
libraries[proj4js][download][url] = "http://download.osgeo.org/proj4js/proj4js-1.0.3.zip"
libraries[proj4js][directory_name] = "proj4js"
libraries[proj4js][destination] = "../../sites/all/libraries"

libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://simplepie.org/downloads/simplepie_1.3.1.compiled.php"
libraries[simplepie][download][filename] = "simplepie.compiled.php"

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][branch] = "7.x-1.0-alpha2"
libraries[stanford_sites_content_importer][destination] = "libraries"
