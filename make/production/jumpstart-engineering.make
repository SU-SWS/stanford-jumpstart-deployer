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

projects[contextual_view_modes][subdir] = "contrib"
projects[contextual_view_modes][version] = "3.0"

projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0"

; Stanford Modules - GitHub
; -------------------------

projects[stanford_private_page][type] = "module"
projects[stanford_private_page][download][type] = "git"
projects[stanford_private_page][download][url] = "git@github.com:SU-SWS/stanford_private_page.git"
projects[stanford_private_page][download][tag] = "7.x-1.0+26-dev"
projects[stanford_private_page][subdir] = "stanford"

projects[stanford_related_content][type] = "module"
projects[stanford_related_content][download][type] = "git"
projects[stanford_related_content][download][url] = "git@github.com:SU-SWS/stanford_related_content.git"
projects[stanford_related_content][download][tag] = "7.x-1.0-alpha2"
projects[stanford_related_content][subdir] = "stanford"

; JSE Profiles
; ------------------------------------------------------------------------------

projects[stanford_sites_jumpstart_academic][type] = "profile"
projects[stanford_sites_jumpstart_academic][download][type] = "git"
projects[stanford_sites_jumpstart_academic][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_academic.git"
projects[stanford_sites_jumpstart_academic][download][tag] = "7.x-4.5.1+16-dev"

projects[stanford_sites_jumpstart_engineering][type] = "profile"
projects[stanford_sites_jumpstart_engineering][download][type] = "git"
projects[stanford_sites_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_sites_jumpstart_engineering.git"
projects[stanford_sites_jumpstart_engineering][download][tag] = "7.x-1.1"

; JSE Modules
; ------------------------------------------------------------------------------

projects[stanford_jumpstart_engineering][type] = "module"
projects[stanford_jumpstart_engineering][download][type] = "git"
projects[stanford_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_engineering.git"
projects[stanford_jumpstart_engineering][download][tag] = "7.x-1.0+2-dev"
projects[stanford_jumpstart_engineering][subdir] = "stanford"

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = FALSE
projects[stanford_jumpstart_home][download][tag] = "7.x-1.4-beta1"
projects[stanford_jumpstart_home][subdir] = "stanford"

projects[stanford_affiliate_organization][type] = "module"
projects[stanford_affiliate_organization][download][type] = "git"
projects[stanford_affiliate_organization][download][url] = "git@github.com:SU-SWS/stanford_affiliate_organization.git"
projects[stanford_affiliate_organization][download][branch] = "7.x-1.x"
projects[stanford_affiliate_organization][subdir] = "stanford"

; Themes
; ------------------------------------------------------------------------------

; Temporary until core gets updated
projects[stanford_framework][download][tag] = "7.x-3.2-beta6"
projects[open_framework][download][tag] = "7.x-2.5-beta1"

; Child .make Overidden Modules
; ------------------------------------------------------------------------------

projects[stanford_bean_types][download][tag] = "7.x-2.8+3-dev"
projects[stanford_capx][download][tag] = "7.x-1.3-php54"
projects[stanford_carousel][download][tag] = "7.x-2.2+4-dev"
projects[stanford_courses][download][tag] = "7.x-3.9"
projects[stanford_event_series][download][tag] = "7.x-1.1"
projects[stanford_image][download][tag] = "7.x-3.4"
projects[stanford_image_styles][download][tag] = "7.x-3.3+5-dev"
projects[stanford_jumpstart][download][tag] = "7.x-4.5+33-dev"
projects[stanford_landing_page][download][tag] = "7.x-1.4"
projects[stanford_manage_content][download][tag] = "7.x-3.4"
projects[stanford_person][download][tag] = "7.x-5.0"
projects[stanford_video][download][tag] = "7.x-2.1+5-dev"

