core = 7.x
api = 2
; Default directory should be sites/all/modules/contrib
defaults[projects][subdir] = contrib

; Jumpstart Engineering (JSE)
; ------------------------------------------------------------------------------

; Inherit all of the wonderfulness that is jumpstart academic.
includes[jsa] = "jumpstart-academic.make"

; Contributed modules
; -------------------

projects[always_visible][type] = "module"
projects[always_visible][download][type] = "git"
projects[always_visible][download][revision] = "a6c2dac352a6bb658644f66a3bd96b6e5805a6c1"
projects[always_visible][download][url] = "http://git.drupal.org/project/always_visible.git"

projects[contextual_view_modes][version] = "3.0"

; Temporary until Stanford-Drupal-Profile gets updated
projects[field_collection][version] = "1.0-beta11"

projects[menu_attributes][version] = "1.0"

projects[pathauto][version] = "1.3"

projects[default_image_ft][subdir] = "contrib"
projects[default_image_ft][version] = "1.6"

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

; Libraries
; ---------

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][tag] = "7.x-1.1+14-dev"
libraries[stanford_sites_content_importer][destination] = "libraries"

; JSE Profiles
; ------------------------------------------------------------------------------

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][tag] = "7.x-4.5+15-dev"
projects[stanford_sites_jumpstart][subdir] = FALSE

projects[stanford_sites_jumpstart_academic][type] = "profile"
projects[stanford_sites_jumpstart_academic][download][type] = "git"
projects[stanford_sites_jumpstart_academic][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_academic.git"
projects[stanford_sites_jumpstart_academic][download][tag] = "7.x-4.5.1+16-dev"
projects[stanford_sites_jumpstart_academic][subdir] = FALSE

projects[stanford_sites_jumpstart_engineering][type] = "profile"
projects[stanford_sites_jumpstart_engineering][download][type] = "git"
projects[stanford_sites_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_sites_jumpstart_engineering.git"
projects[stanford_sites_jumpstart_engineering][download][tag] = "7.x-1.1+4-dev"
projects[stanford_sites_jumpstart_engineering][subdir] = FALSE

; JSE Modules
; ------------------------------------------------------------------------------

projects[stanford_jumpstart_engineering][type] = "module"
projects[stanford_jumpstart_engineering][download][type] = "git"
projects[stanford_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_engineering.git"
projects[stanford_jumpstart_engineering][download][tag] = "7.x-1.0+16-dev"
projects[stanford_jumpstart_engineering][subdir] = "stanford"

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = FALSE
projects[stanford_jumpstart_home][download][tag] = "7.x-1.4+4-dev"
projects[stanford_jumpstart_home][subdir] = "stanford"

projects[stanford_affiliate_organization][type] = "module"
projects[stanford_affiliate_organization][download][type] = "git"
projects[stanford_affiliate_organization][download][url] = "git@github.com:SU-SWS/stanford_affiliate_organization.git"
projects[stanford_affiliate_organization][download][tag] = "7.x-1.1+4-dev"
projects[stanford_affiliate_organization][subdir] = "stanford"

; Themes
; ------------------------------------------------------------------------------

; Temporary until core gets updated
projects[stanford_framework][download][tag] = "7.x-3.2-beta6"
projects[open_framework][download][tag] = "7.x-2.5-beta1"

; Override default behavior of putting things in a "contrib" subdirectory. See line #4 of this .make file.
projects[cube][subdir] = FALSE
projects[open_framework][subdir] = FALSE
projects[rubik][subdir] = FALSE
projects[stanfordmodern][subdir] = FALSE
projects[stanford_framework][subdir] = FALSE
projects[stanford_jordan][subdir] = FALSE
projects[stanford_light][subdir] = FALSE
projects[stanford_seven][subdir] = FALSE
projects[stanford_wilbur][subdir] = FALSE
projects[tao][subdir] = FALSE

; Child .make Overidden Modules
; ------------------------------------------------------------------------------

projects[stanford_bean_types][download][tag] = "7.x-2.8+3-dev"
projects[stanford_capx][download][tag] = "7.x-1.3-php54"
projects[stanford_carousel][download][tag] = "7.x-2.2+4-dev"
projects[stanford_courses][download][tag] = "7.x-3.9"
projects[stanford][download][tag] = '7.x-2.2+13-dev'
projects[stanford_event_series][download][tag] = "7.x-1.1"
projects[stanford_image][download][tag] = "7.x-3.4"
projects[stanford_image_styles][download][tag] = "7.x-3.3+5-dev"
projects[stanford_jumpstart][download][tag] = "7.x-4.6"
projects[stanford_landing_page][download][tag] = "7.x-1.4"
projects[stanford_manage_content][download][tag] = "7.x-3.4"
projects[stanford_page][download][tag] = "7.x-2.1+2-dev"
projects[stanford_person][download][tag] = "7.x-5.0"
projects[stanford_publication][download][tag] = "7.x-2.1+17-dev"
projects[stanford_video][download][tag] = "7.x-2.1+5-dev"
