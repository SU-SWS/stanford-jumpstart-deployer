core = 7.x
api = 2

libraries[simplepie][download][type] = "file"
libraries[simplepie][download][url] = "http://web.stanford.edu/group/webservices/simplepie.compiled.php"
libraries[simplepie][download][filename] = "simplepie.compiled.php"
libraries[simplepie][destination] = "libraries"

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][tag] = "7.x-1.1-dev+1"
libraries[stanford_sites_content_importer][destination] = "libraries"
