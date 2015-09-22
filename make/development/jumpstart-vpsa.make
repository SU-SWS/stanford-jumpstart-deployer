core = 7.x
api = 2

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/stanford-themes.make"
includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/patches.make"
includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/libraries.make"
includes[core_libraries] = "core/core-libraries.make"

; DEV VERSIONS
; -------------------

; The remote stanford profile defines a number of core stanford resources.
; Here we alter them to use the development branch instead of a release tag.

projects[erus][download][tag] = FALSE
projects[erus][download][branch] = 7.x-1.x-dev
projects[stanford_bean_types][download][tag] = FALSE
projects[stanford_bean_types][download][branch] = "7.x-2.x-dev"
projects[stanford_capx][download][tag] = FALSE
projects[stanford_capx][download][branch] = "7.x-1.x"
projects[stanford_carousel][download][tag] = FALSE
projects[stanford_carousel][download][branch] = "7.x-2.x"
projects[stanford_courses][download][tag] = FAlSE
projects[stanford_courses][download][branch] = "7.x-3.x-dev"
projects[stanford_date_formats][download][tag] = FALSE
projects[stanford_date_formats][branch][tag] = "7.x-1.x-dev"
projects[stanford_date_timepicker][download][tag] = FALSE
projects[stanford_date_timepicker][download][branch] = "7.x-1.x"
projects[stanford_events_importer][download][tag] = FALSE
projects[stanford_events_importer][download][branch] = "7.x-3.x"
projects[stanford_image][download][tag] = FALSE
projects[stanford_image][download][branch] = "7.x-3.x-dev"
projects[stanford_image_styles][download][tag] = FALSE
projects[stanford_image_styles][download][branch] = "7.x-3.x-dev"
projects[stanford_metatag_nobots][download][tag] = FALSE
projects[stanford_metatag_nobots][download][branch] = "7.x-3.x-dev"
projects[stanford_page][download][tag] = FALSE
projects[stanford_page][download][branch] = "7.x-2.x-dev"
projects[stanford_person][download][tag] = FALSE
projects[stanford_person][download][branch] = "7.x-5.x-dev"
projects[stanford_sites_systemtools][download][tag] = FALSE
projects[stanford_sites_systemtools][download][branch] = "7.x-1.x"
projects[stanford_sites_helper][download][tag] = FALSE
projects[stanford_sites_helper][download][branch] = "7.x-1.x"
projects[stanford_slides][download][tag] = FALSE
projects[stanford_slides][download][branch] = "7.x-3.x-dev"
projects[stanford_video][download][tag] = FALSE
projects[stanford_video][download][branch] = "7.x-2.x-dev"
projects[stanford_wysiwyg][download][tag] = FALSE
projects[stanford_wysiwyg][download][branch] = "7.x-2.x-dev"
projects[webauth][download][tag] = FALSE
projects[webauth][download][branch] = "master"
projects[webauth_extras][download][tag] = FALSE
projects[webauth_extras][download][branch] = "master"

; Contributed modules
; -------------------

projects[field_formatter_settings][version] = "1.1"
projects[field_formatter_settings][subdir] = "contrib"

projects[simple_field_formatter][version] = "2.0-beta4"
projects[simple_field_formatter][subdir] = "contrib"


; Contrib Dev Versions
; Because Dev Versions can change we want to target the specific commit hash
; that this build works with.

projects[workbench_moderation][version] = "1.x-dev"
projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][download][type] = "git"
projects[workbench_moderation][download][url] = "http://git.drupal.org/project/workbench_moderation.git"
projects[workbench_moderation][download][revision] = "296ce873c751f31ec5b059ba9899004c0a97e4ec"

; Contributed themes
; ------------------

; Found in remote stanford.make


; Stanford Modules - GitHub
; -------------------------

projects[stanford_easy_wysiwyg_css][type] = "module"
projects[stanford_easy_wysiwyg_css][download][type] = "git"
projects[stanford_easy_wysiwyg_css][download][url] = "git@github.com:SU-SWS/stanford_easy_wysiwyg_css.git"
projects[stanford_easy_wysiwyg_css][download][branch] = "7.x-1.x"
projects[stanford_easy_wysiwyg_css][subdir] = "stanford"

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][branch] = "7.x-4.x-dev"
projects[stanford_jumpstart][subdir] = "stanford"

projects[stanford_jumpstart_vpsa][type] = "module"
projects[stanford_jumpstart_vpsa][download][type] = "git"
projects[stanford_jumpstart_vpsa][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_vpsa.git"
projects[stanford_jumpstart_vpsa][download][branch] = "7.x-4.x"
projects[stanford_jumpstart_vpsa][subdir] = "stanford"

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][branch] = "7.x-3.x-dev"
projects[stanford_manage_content][subdir] = "stanford"

projects[stanford_news][type] = "module"
projects[stanford_news][download][type] = "git"
projects[stanford_news][download][url] = "git@github.com:SU-SWS/stanford_news.git"
projects[stanford_news][download][branch] = "7.x-3.x-jsvpsa"
projects[stanford_news][subdir] = "stanford"

projects[stanford_page][download][branch] = "7.x-2.x-jsvpsa"
projects[stanford_page][download][tag] = FALSE

projects[stanford_person][download][branch] = "7.x-5.x-jsvpsa"
projects[stanford_person][download][tag] = FALSE

projects[stanford_landing_page][type] = "module"
projects[stanford_landing_page][download][type] = "git"
projects[stanford_landing_page][download][url] = "git@github.com:SU-SWS/stanford_landing_page.git"
projects[stanford_landing_page][download][branch] = "7.x-1.x"
projects[stanford_landing_page][subdir] = "stanford"

projects[stanford_affiliate_organization][type] = "module"
projects[stanford_affiliate_organization][download][type] = "git"
projects[stanford_affiliate_organization][download][url] = "git@github.com:SU-SWS/stanford_affiliate_organization.git"
projects[stanford_affiliate_organization][download][branch] = "7.x-1.x"
projects[stanford_affiliate_organization][subdir] = "stanford"

projects[stanford_fellowship][type] = "module"
projects[stanford_fellowship][download][type] = "git"
projects[stanford_fellowship][download][url] = "git@github.com:SU-SWS/stanford_fellowship.git"
projects[stanford_fellowship][download][branch] = "7.x-1.x"
projects[stanford_fellowship][subdir] = "stanford"

projects[stanford_subsites][type] = "module"
projects[stanford_subsites][download][type] = "git"
projects[stanford_subsites][download][url] = "git@github.com:SU-SWS/stanford_subsites.git"
projects[stanford_subsites][download][branch] = "7.x-2.x"
projects[stanford_subsites][subdir] = "stanford"

projects[stanford_gallery][type] = "module"
projects[stanford_gallery][download][type] = "git"
projects[stanford_gallery][download][url] = "git@github.com:SU-SWS/stanford_gallery.git"
projects[stanford_gallery][download][branch] = "7.x-1.x"
projects[stanford_gallery][subdir] = "stanford"

; Overrides from the core make files
; ----------------------------------

projects[stanford_events_importer][download][branch] = "7.x-3.x-jsvpsa"
projects[stanford_events_importer][download][tag] = FALSE

projects[stanford_slides][download][branch] = "7.x-3.x-jsvpsa"
projects[stanford_slides][download][tag] = FALSE

; Stanford themes - Github
; ------------------------

; Found in core-stanford.make

projects[stanford_framework][download][branch] = "7.x-2.x"

projects[stanfordmodern][type] = "theme"
projects[stanfordmodern][download][type] = "git"
projects[stanfordmodern][download][url] = "git@github.com:su-ddd/stanfordmodern.git"
projects[stanfordmodern][download][branch] = "7.x-1.x"

projects[stanford_jordan][type] = "theme"
projects[stanford_jordan][download][type] = "git"
projects[stanford_jordan][download][url] = "git@github.com:SU-SWS/stanford_jordan.git"
projects[stanford_jordan][download][branch] = "7.x-2.x"

; Libraries
; ---------

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][branch] = "7.x-1.x"
libraries[stanford_sites_content_importer][destination] = "libraries"

; Profiles
; --------

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.x"

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][branch] = "7.x-4.x-dev"

projects[stanford_sites_jumpstart_vpsa][type] = "profile"
projects[stanford_sites_jumpstart_vpsa][download][type] = "git"
projects[stanford_sites_jumpstart_vpsa][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_vpsa.git"
projects[stanford_sites_jumpstart_vpsa][download][branch] = "7.x-4.x"

; Patches
; -------

includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/patches.make"
includes[core_patches] = "core/core-patches.make"

