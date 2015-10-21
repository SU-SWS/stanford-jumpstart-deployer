; Jumpstart Engineering (JSE)
; ------------------------------------------------------------------------------

; Inherit all of the wonderfulness that is jumpstart academic.
includes[jsa] = "jumpstart-academic.make"

; Contributed modules
; -------------------

projects[always_visible][type] = "module"
projects[always_visible][subdir] = "contrib"
projects[always_visible][download][type] = "git"
projects[always_visible][download][revision] = "a6c2dac352a6bb658644f66a3bd96b6e5805a6c1"
projects[always_visible][download][url] = "http://git.drupal.org/project/always_visible.git"

projects[menu_attributes][type] = "module"
projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0-rc3"

; Stanford Modules - GitHub
; -------------------------

projects[stanford_private_page][type] = "module"
projects[stanford_private_page][download][type] = "git"
projects[stanford_private_page][download][url] = "git@github.com:SU-SWS/stanford_private_page.git"
projects[stanford_private_page][download][tag] = "7.x-1.0"
projects[stanford_private_page][subdir] = "stanford"

projects[stanford_related_content][type] = "module"
projects[stanford_related_content][download][type] = "git"
projects[stanford_related_content][download][url] = "git@github.com:SU-SWS/stanford_related_content.git"
projects[stanford_related_content][download][tag] = "7.x-1.0-alpha1"
projects[stanford_related_content][subdir] = "stanford"

; JSE Profiles
; ------------------------------------------------------------------------------

// Override until JSA comes up to speed.
projects[stanford_sites_abstract][download][branch] = FALSE
projects[stanford_sites_abstract][download][tag] = "7.x-4.2+4-dev"
projects[stanford_sites_jumpstart][download][tag] = "7.x-4.5+4-dev"
projects[stanford_sites_jumpstart_academic][download][tag] = "7.x-4.5+4-dev"

projects[stanford_sites_jumpstart_engineering][type] = "profile"
projects[stanford_sites_jumpstart_engineering][download][type] = "git"
projects[stanford_sites_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_sites_jumpstart_engineering.git"
projects[stanford_sites_jumpstart_engineering][download][tag] = "7.x-1.0+1-dev"

; JSE Modules
; ------------------------------------------------------------------------------

projects[stanford_jumpstart_engineering][type] = "module"
projects[stanford_jumpstart_engineering][download][type] = "git"
projects[stanford_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_engineering.git"
projects[stanford_jumpstart_engineering][download][tag] = "7.x-1.0"
projects[stanford_jumpstart_engineering][subdir] = "stanford"

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = FALSE
projects[stanford_jumpstart_home][download][tag] = "7.x-1.4"
projects[stanford_jumpstart_home][subdir] = "stanford"

; Themes
; ------------------------------------------------------------------------------

; Temporary until core gets updated
projects[stanford_framework][download][tag] = "7.x-3.1+24-dev"
projects[open_framework][download][tag] = "7.x-2.4+11-dev"

; Child .make Overidden Modules
; ------------------------------------------------------------------------------

projects[stanford_bean_types][download][tag] = "7.x-2.6"
projects[stanford_capx][download][tag] = "7.x-1.3-php54"
projects[stanford_carousel][download][tag] = "7.x-2.2"
projects[stanford_courses][download][tag] = "7.x-3.7"
projects[stanford_event_series][download][tag] = "7.x-1.1"
projects[stanford_image][download][tag] = "7.x-3.4"
projects[stanford_image_styles][download][tag] = "7.x-3.3"
projects[stanford_jumpstart][download][tag] = "7.x-4.5+18-dev"
projects[stanford_landing_page][download][tag] = "7.x-1.3"
projects[stanford_manage_content][download][tag] = "7.x-3.3+6-dev"
projects[stanford_person][download][tag] = "7.x-5.0-beta3"
projects[stanford_video][download][tag] = "7.x-2.1+5-dev"

