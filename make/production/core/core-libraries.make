core = 7.x
api = 2

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.zip"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "libraries"

libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "https://raw.githubusercontent.com/SU-SWS/stanford_sites_libraries/master/jquery.cycle/jquery.cycle.all.js"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][destination] = "libraries"

; See https://www.drupal.org/node/2049849.
libraries[feeds_jsonpath_parser][download][type] = "get"
libraries[feeds_jsonpath_parser][download][url] = "http://jsonpath.googlecode.com/files/jsonpath-0.8.1.php"
libraries[feeds_jsonpath_parser][destination] = "modules/contrib"
libraries[feeds_jsonpath_parser][install_path] = "sites/all"

libraries[jw_player][download][type] = "get"
libraries[jw_player][download][url] = "https://github.com/SU-SWS/stanford_sites_libraries/blob/jwplayer5/jwplayer.zip?raw=true"
libraries[jw_player][directory_name] = "jwplayer"
libraries[jw_player][destination] = "libraries"

libraries[proj4js][download][type] = "get"
libraries[proj4js][download][url] = "http://download.osgeo.org/proj4js/proj4js-1.1.0.zip"
libraries[proj4js][directory_name] = "proj4js"
libraries[proj4js][destination] = "libraries"

libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://simplepie.org/downloads/simplepie_1.3.1.compiled.php"
libraries[simplepie][download][filename] = "simplepie.compiled.php"
libraries[simplepie][destination] = "libraries"

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][tag] = "7.x-1.1-dev+1"
libraries[stanford_sites_content_importer][destination] = "libraries"

libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.5.14.zip"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][destination] = "libraries"

libraries[icalcreator][download][type] = "git"
libraries[icalcreator][download][url] = "https://github.com/iCalcreator/iCalcreator.git"
libraries[icalcreator][download][revision] = "e3dbec2cb3bb91a8bde989e467567ae8831a4026"
libraries[icalcreator][directory_name] = "iCalcreator"
libraries[icalcreator][destination] = "libraries"
