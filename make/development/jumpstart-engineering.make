; Jumpstart Engineering (JSE)
; ------------------------------------------------------------------------------

; Inherit all of the wonderfulness that is jumpstart academic.
includes[jsa] = "jumpstart-academic.make"

; Contributed modules
; -------------------

projects[always_visible][subdir] = "contrib"
projects[always_visible][download][type] = "git"
projects[always_visible][download][revision] = "a6c2dac352a6bb658644f66a3bd96b6e5805a6c1"
projects[always_visible][download][url] = "http://git.drupal.org/project/always_visible.git"

projects[contextual_view_modes][subdir] = "contrib"
projects[contextual_view_modes][version] = "3.0"

projects[menu_attributes][subdir] = "contrib"
projects[menu_attributes][version] = "1.0"

projects[field_collection][version] = "1.0-beta11"

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

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = "7.x-1.x"
projects[stanford_jumpstart_home][subdir] = "stanford"


projects[stanford_affiliate_organization][type] = "module"
projects[stanford_affiliate_organization][download][type] = "git"
projects[stanford_affiliate_organization][download][url] = "git@github.com:SU-SWS/stanford_affiliate_organization.git"
projects[stanford_affiliate_organization][download][branch] = "7.x-1.x"
projects[stanford_affiliate_organization][subdir] = "stanford"

; Temporary until core gets updated
projects[stanford_framework][download][type] = "git"
projects[stanford_framework][download][url] = "git@github.com:SU-SWS/stanford_framework.git"
projects[stanford_framework][download][tag] = 7.x-3.2-beta6
;projects[stanford_framework][download][branch] = "7.x-3.x"

projects[open_framework][download][type] = "git"
projects[open_framework][download][url] = "git@github.com:SU-SWS/open_framework.git"
projects[open_framework][download][tag] = 7.x-2.5-beta1
;projects[open_framework][download][branch] = "7.x-2.x"

