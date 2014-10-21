core = 7.x
api = 2

; Contributed modules
; -------------------

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

; Contributed themes
; ------------------

; Found in contrib.make


; Stanford Modules - GitHub
; -------------------------

includes[] = "core/core-stanford.make"

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][branch] = "7.x-4.x-dev"
projects[stanford_jumpstart][subdir] = "stanford"

projects[stanford_metatag_nobots][type] = "module"
projects[stanford_metatag_nobots][download][type] = "git"
projects[stanford_metatag_nobots][download][url] = "git@github.com:SU-SWS/stanford_metatag_nobots.git"
projects[stanford_metatag_nobots][download][branch] = "7.x-3.x-dev"
projects[stanford_metatag_nobots][subdir] = "stanford"

projects[stanford_bean_types][type] = "module"
projects[stanford_bean_types][download][type] = "git"
projects[stanford_bean_types][download][url] = "git@github.com:SU-SWS/stanford_bean_types.git"
projects[stanford_bean_types][download][branch] = "7.x-2.x-dev"
projects[stanford_bean_types][subdir] = "stanford"

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][branch] = "7.x-3.x-dev"
projects[stanford_manage_content][subdir] = "stanford"

projects[stanford_news][type] = "module"
projects[stanford_news][download][type] = "git"
projects[stanford_news][download][url] = "git@github.com:SU-SWS/stanford_news.git"
projects[stanford_news][download][branch] = "7.x-3.x-dev"
projects[stanford_news][subdir] = "stanford"

projects[stanford_jumpstart_plus][type] = "module"
projects[stanford_jumpstart_plus][download][type] = "git"
projects[stanford_jumpstart_plus][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_plus.git"
projects[stanford_jumpstart_plus][download][branch] = "7.x-4.x"
projects[stanford_jumpstart_plus][subdir] = "stanford"

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = "7.x-1.x"
projects[stanford_jumpstart_home][subdir] = "stanford"

projects[stanford_landing_page][type] = "module"
projects[stanford_landing_page][download][type] = "git"
projects[stanford_landing_page][download][url] = "git@github.com:SU-SWS/stanford_landing_page.git"
projects[stanford_landing_page][download][branch] = "7.x-1.x"
projects[stanford_landing_page][subdir] = "stanford"


; Stanford themes - Github
; ------------------------

; Found in core-stanford.make

projects[stanford_light][type] = "theme"
projects[stanford_light][download][type] = "git"
projects[stanford_light][download][url] = "git@github.com:SU-SWS/stanford_light.git"
projects[stanford_light][download][branch] = "master"

; Libraries
; ---------

includes[] = "core/core-libraries.make"

; Profiles
; --------

includes[] = "core/core-profiles.make"

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-1.x"

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][branch] = "7.x-4.x-dev"

projects[stanford_sites_jumpstart_plus][type] = "profile"
projects[stanford_sites_jumpstart_plus][download][type] = "git"
projects[stanford_sites_jumpstart_plus][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_plus.git"
projects[stanford_sites_jumpstart_plus][download][branch] = "7.x-4.x"

; Patches
; -------

includes[] = "core/core-patches.make"