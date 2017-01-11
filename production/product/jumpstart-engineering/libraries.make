core = 7.x
api = 2

; Libraries
; ------------------------------------------------------------------------------

libraries[ckeditor][destination] = "libraries"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.6.1/ckeditor_3.6.6.1.zip"

libraries[colorbox][destination] = "libraries"
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/1.6.4.zip"

libraries[dompdf][destination] = "libraries"
libraries[dompdf][download][type] = "get"
libraries[dompdf][download][url] = https://github.com/dompdf/dompdf/releases/download/v0.6.2/dompdf-0.6.2.zip
libraries[dompdf][directory_name] = dompdf

; See https://www.drupal.org/node/2049849.
libraries[feeds_jsonpath_parser][destination] = "modules/contrib"
libraries[feeds_jsonpath_parser][download][type] = "get"
libraries[feeds_jsonpath_parser][download][url] = "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/jsonpath/jsonpath-0.8.1.php"
libraries[feeds_jsonpath_parser][install_path] = "sites/all"

libraries[icalcreator][destination] = "libraries"
libraries[icalcreator][directory_name] = "iCalcreator"
libraries[icalcreator][download][revision] = "e3dbec2cb3bb91a8bde989e467567ae8831a4026"
libraries[icalcreator][download][type] = "git"
libraries[icalcreator][download][url] = "https://github.com/iCalcreator/iCalcreator.git"

libraries[jquery_cycle][destination] = "libraries"
libraries[jquery_cycle][directory_name] = "jquery.cycle"
libraries[jquery_cycle][download][type] = "get"
libraries[jquery_cycle][download][url] = "http://malsup.github.com/jquery.cycle.all.js"

libraries[jqueryuitimepicker][destination] = "libraries"
libraries[jqueryuitimepicker][directory_name] = "jquery-ui-timepicker"
libraries[jqueryuitimepicker][download][subtree] = "jQuery-Timepicker-Addon-master/src/"
libraries[jqueryuitimepicker][download][type] = "get"
libraries[jqueryuitimepicker][download][url] = "https://github.com/trentrichardson/jQuery-Timepicker-Addon/archive/master.zip"

libraries[jw_player][destination] = "libraries"
libraries[jw_player][directory_name] = "jwplayer"
libraries[jw_player][download][type] = "get"
libraries[jw_player][download][url] = "https://github.com/SU-SWS/stanford_sites_libraries/blob/jwplayer5/jwplayer.zip?raw=true"

libraries[proj4js][destination] = "libraries"
libraries[proj4js][directory_name] = proj4js
libraries[proj4js][download][type] = "get"
libraries[proj4js][download][url] = http://download.osgeo.org/proj4js/proj4js-1.1.0.zip

libraries[simplepie][destination] = "libraries"
libraries[simplepie][download][filename] = "simplepie.compiled.php"
libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://simplepie.org/downloads/simplepie_1.3.1.compiled.php"

libraries[stanford_install_tasks][directory_name] = "tasks"
libraries[stanford_install_tasks][download][tag] = "7.x-1.0-alpha2"
libraries[stanford_install_tasks][download][type] = "git"
libraries[stanford_install_tasks][download][url] = "git@github.com:SU-SWS/stanford_install_tasks.git"

libraries[stanford_sites_content_importer][destination] = "libraries"
libraries[stanford_sites_content_importer][download][tag] = "7.x-2.0"
libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
