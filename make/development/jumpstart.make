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

projects[context_useragent][version] = "1.x-dev"
projects[context_useragent][subdir] = "contrib"
projects[context_useragent][download][type] = "git"
projects[context_useragent][download][url] = "http://git.drupal.org/project/context_useragent.git"
projects[context_useragent][download][revision] = "8949c6d4ee7a462b49e1b08dfd7dc60f1fa7e8e8"

; Contributed themes
; ------------------

; Temporary until core gets updated
projects[stanford_framework][download][tag] = "7.x-3.2-dev+8"

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

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][branch] = "7.x-3.x-dev"
projects[stanford_manage_content][subdir] = "stanford"

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

; Patches
; -------

includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/patches.make"
includes[core_patches] = "core/core-patches.make"

