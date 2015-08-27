core = 7.x
api = 2

libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://simplepie.org/downloads/simplepie_1.3.1.compiled.php"
libraries[simplepie][download][filename] = "simplepie.compiled.php"
libraries[simplepie][destination] = "libraries"

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][branch] = "7.x-1.x"
libraries[stanford_sites_content_importer][destination] = "libraries"
