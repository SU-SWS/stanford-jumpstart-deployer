core = 7.x
api = 2
; Default directory should be sites/all/modules/contrib
defaults[projects][subdir] = contrib

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.4/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.4/make/stanford-themes.make"
includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.4/make/patches.make"
includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.4/make/libraries.make"

; Temporary until Stanford-Drupal-Profile gets updated
projects[field_collection][version] = "1.0-beta11"

; Stanford Modules - GitHub
; -------------------------

projects[stanford_bean_types][download][tag] = "7.x-2.7"
projects[stanford_capx][download][tag] = "7.x-1.3-php54"
projects[stanford_courses][download][tag] = "7.x-3.8"
projects[stanford_image][download][tag] = "7.x-3.4+11-dev"
projects[stanford_image_styles][download][tag] = "7.x-3.3"
projects[stanford_carousel][download][tag] = "7.x-2.2"

projects[stanford_gallery][type] = "module"
projects[stanford_gallery][download][type] = "git"
projects[stanford_gallery][download][url] = "git@github.com:SU-SWS/stanford_gallery.git"
projects[stanford_gallery][download][tag] = "7.x-2.1"
projects[stanford_gallery][subdir] = "stanford"

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][branch] = "7.x-4.5+30-dev"
projects[stanford_jumpstart][subdir] = "stanford"

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][branch] = "7.x-3.4"
projects[stanford_manage_content][subdir] = "stanford"

projects[stanford_news][type] = "module"
projects[stanford_news][download][type] = "git"
projects[stanford_news][download][url] = "git@github.com:SU-SWS/stanford_news.git"
projects[stanford_news][download][branch] = "7.x-3.1"
projects[stanford_news][subdir] = "stanford"

projects[stanford_jumpstart_plus][type] = "module"
projects[stanford_jumpstart_plus][download][type] = "git"
projects[stanford_jumpstart_plus][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_plus.git"
projects[stanford_jumpstart_plus][download][tag] = "7.x-4.5.1"
projects[stanford_jumpstart_plus][subdir] = "stanford"

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = "7.x-1.3"
projects[stanford_jumpstart_home][subdir] = "stanford"

projects[stanford_landing_page][type] = "module"
projects[stanford_landing_page][download][type] = "git"
projects[stanford_landing_page][download][url] = "git@github.com:SU-SWS/stanford_landing_page.git"
projects[stanford_landing_page][download][branch] = "7.x-1.4"
projects[stanford_landing_page][subdir] = "stanford"


; Stanford themes - Github
; ------------------------

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


; Libraries
; ---------
includes[core_libraries] = "core/core-libraries.make"

; Until Stanford Drupal profile gets updated.
; https://github.com/SU-SWS/Stanford-Drupal-Profile/pull/56/files
libraries[dompdf][download][type] = "get"
libraries[dompdf][download][url] = https://github.com/dompdf/dompdf/releases/download/v0.6.2/dompdf-0.6.2.zip
libraries[dompdf][directory_name] = dompdf
libraries[dompdf][destination] = "libraries"

; Profiles
; --------

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][tag] = "7.x-4.3"
projects[stanford_sites_abstract][subdir] = FALSE

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][tag] = "7.x-4.5+7-dev"
projects[stanford_sites_jumpstart][subdir] = FALSE

projects[stanford_sites_jumpstart_plus][type] = "profile"
projects[stanford_sites_jumpstart_plus][download][type] = "git"
projects[stanford_sites_jumpstart_plus][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_plus.git"
projects[stanford_sites_jumpstart_plus][download][tag] = "7.x-4.5.1"
projects[stanford_sites_jumpstart_plus][subdir] = FALSE

; Patches
; -------

includes[core_patches] = "core/core-patches.make"
