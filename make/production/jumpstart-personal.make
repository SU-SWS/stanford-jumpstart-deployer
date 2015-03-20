core = 7.x
api = 2

; Core and Contrib includes.
; ------------------------

includes[] = "core/contrib.make"

projects[context_http_headers][version] = "1.0"
projects[context_http_headers][subdir] = "contrib"
projects[entity_dependency][version] = "1.0-alpha1"
projects[entity_dependency][subdir] = "contrib"

; Contrib Dev Versions
; Because Dev Versions can change we want to target the specific commit hash
; that this build works with.

projects[uuid][version] = "1.x-dev"
projects[uuid][subdir] = "contrib"
projects[uuid][download][type] = "git"
projects[uuid][download][url] = "http://git.drupal.org/project/uuid.git"
projects[uuid][download][revision] = "45d745c48a20f6a3cfc12f3a634b81f21a519a0a"

projects[uuid_features][version] = "1.x-dev"
projects[uuid_features][subdir] = "contrib"
projects[uuid_features][download][type] = "git"
projects[uuid_features][download][url] = "http://git.drupal.org/project/uuid_features.git"
projects[uuid_features][download][revision] = "aa514d66385735e0bc73157935d9ff4edbca5cf2"

projects[menu_import][version] = "1.x-dev"
projects[menu_import][subdir] = "contrib"
projects[menu_import][download][type] = "git"
projects[menu_import][download][url] = "http://git.drupal.org/project/menu_import.git"
projects[menu_import][download][revision] = "7f67708a8c6bc00b2f66ef028b808e27cf05ddbb"

projects[context_useragent][version] = "1.x-dev"
projects[context_useragent][subdir] = "contrib"
projects[context_useragent][download][type] = "git"
projects[context_useragent][download][url] = "http://git.drupal.org/project/context_useragent.git"
projects[context_useragent][download][revision] = "8949c6d4ee7a462b49e1b08dfd7dc60f1fa7e8e8"


; Stanford Modules - GitHub
; -------------------------

includes[] = "core/core-stanford.make"

projects[stanford_metatag_nobots][type] = "module"
projects[stanford_metatag_nobots][download][type] = "git"
projects[stanford_metatag_nobots][download][url] = "git@github.com:SU-SWS/stanford_metatag_nobots.git"
projects[stanford_metatag_nobots][download][tag] = "7.x-3.0"
projects[stanford_metatag_nobots][subdir] = "stanford"

projects[stanford_bean_types][type] = "module"
projects[stanford_bean_types][download][type] = "git"
projects[stanford_bean_types][download][url] = "git@github.com:SU-SWS/stanford_bean_types.git"
projects[stanford_bean_types][download][tag] = "7.x-2.0-alpha1"
projects[stanford_bean_types][subdir] = "stanford"

projects[stanford_page][type] = "module"
projects[stanford_page][download][type] = "git"
projects[stanford_page][download][url] = "git@github.com:SU-SWS/stanford_page.git"
projects[stanford_page][download][tag] = "7.x-2.0-alpha1"
projects[stanford_page][subdir] = "stanford"

projects[stanford_personal][type] = "module"
projects[stanford_personal][download][type] = "git"
projects[stanford_personal][download][url] = "git@github.com:SU-SWS/stanford_personal.git"
projects[stanford_personal][download][branch] = "7.x-1.x-dev"
projects[stanford_personal][subdir] = "stanford"

projects[cap_drupal][type] = "module"
projects[cap_drupal][download][type] = "git"
projects[cap_drupal][download][url] = "git@github.com:Stanford/CAP_drupal.git"
projects[cap_drupal][download][branch] = "master"
projects[cap_drupal][subdir] = "stanford"


; Stanford themes - Github
; ------------------------

; Found in core-stanford.make

projects[stanford_light][type] = "theme"
projects[stanford_light][download][type] = "git"
projects[stanford_light][download][url] = "git@github.com:SU-SWS/stanford_light.git"
projects[stanford_light][download][branch] = "7.x-1.x-dev+74"


; Libraries
; ---------

includes[] = "core/core-libraries.make"

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][branch] = "7.x-1.0-alpha2"
libraries[stanford_sites_content_importer][destination] = "../../sites/all/libraries"


; Profiles
; --------

includes[] = "core/core-profiles.make"

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.x"

projects[stanford_sites_jumpstart_personal][type] = "profile"
projects[stanford_sites_jumpstart_personal][download][type] = "git"
projects[stanford_sites_jumpstart_personal][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_personal.git"
projects[stanford_sites_jumpstart_personal][download][branch] = 7.x-4.2


; Patches
; -------

includes[] = "core/core-patches.make"

