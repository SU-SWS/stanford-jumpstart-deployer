; Jumpstart Engineering (JSE)
; ------------------------------------------------------------------------------

; Inherit all of the wonderfulness that is jumpstart academic.
includes[jsa] = "jumpstart-academic.make"

; Contributed modules
; -------------------

projects[always_visible][type] = "module"
projects[always_visible][download][type] = "git"
projects[always_visible][subdir] = "contrib"
projects[always_visible][download][revision] = "a6c2dac352a6bb658644f66a3bd96b6e5805a6c1"
projects[always_visible][download][url] = "git://git.drupal.org/project/always_visible.git"

projects[menu_attributes][type] = "module"
projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0-rc3"

; Stanford Modules - GitHub
; -------------------------

projects[stanford_private_page][type] = "module"
projects[stanford_private_page][download][type] = "git"
projects[stanford_private_page][download][url] = "git@github.com:SU-SWS/stanford_private_page.git"
projects[stanford_private_page][download][branch] = "7.x-1.x"
projects[stanford_private_page][subdir] = "stanford"

projects[stanford_related_content][type] = "module"
projects[stanford_related_content][download][type] = "git"
projects[stanford_related_content][download][url] = "git@github.com:SU-SWS/stanford_related_content.git"
projects[stanford_related_content][download][branch] = "7.x-1.x"
projects[stanford_related_content][subdir] = "stanford"

; JSE Profiles
; ------------------------------------------------------------------------------

projects[stanford_sites_jumpstart_engineering][type] = "profile"
projects[stanford_sites_jumpstart_engineering][download][type] = "git"
projects[stanford_sites_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_sites_jumpstart_engineering.git"
projects[stanford_sites_jumpstart_engineering][download][branch] = "7.x-1.x"

; JSE Modules
; ------------------------------------------------------------------------------

projects[stanford_jumpstart_engineering][type] = "module"
projects[stanford_jumpstart_engineering][download][type] = "git"
projects[stanford_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_engineering.git"
projects[stanford_jumpstart_engineering][download][branch] = "7.x-1.x"
projects[stanford_jumpstart_engineering][subdir] = "stanford"


