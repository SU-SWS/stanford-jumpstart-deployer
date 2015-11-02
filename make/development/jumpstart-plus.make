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
projects[stanford_capx][download][branch] = "php54"
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

; Stanford Modules - GitHub
; -------------------------


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

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = "7.x-1.x"
projects[stanford_jumpstart_home][subdir] = "stanford"

projects[stanford_jumpstart_plus][type] = "module"
projects[stanford_jumpstart_plus][download][type] = "git"
projects[stanford_jumpstart_plus][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_plus.git"
projects[stanford_jumpstart_plus][download][branch] = "7.x-4.x"
projects[stanford_jumpstart_plus][subdir] = "stanford"

projects[stanford_landing_page][type] = "module"
projects[stanford_landing_page][download][type] = "git"
projects[stanford_landing_page][download][url] = "git@github.com:SU-SWS/stanford_landing_page.git"
projects[stanford_landing_page][download][branch] = "7.x-1.x"
projects[stanford_landing_page][subdir] = "stanford"

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

projects[stanford_gallery][type] = "module"
projects[stanford_gallery][download][type] = "git"
projects[stanford_gallery][download][url] = "git@github.com:SU-SWS/stanford_gallery.git"
projects[stanford_gallery][download][branch] = "7.x-2.x"
projects[stanford_gallery][subdir] = "stanford"


; Stanford themes - Github
; ------------------------

; Found in remote stanford-themes.make

; Libraries
; ---------

; Found in remote libraries.make

; Profiles
; --------

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

includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/patches.make"
includes[core_patches] = "core/core-patches.make"
