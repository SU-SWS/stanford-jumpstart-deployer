core = 7.x
api = 2

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.2/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.2/make/stanford-themes.make"
includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.2/make/patches.make"
includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.2/make/libraries.make"

; Stanford Modules - GitHub
; -------------------------

; Tmp until Stanford-Drupal-Profile gets updated
projects[stanford_bean_types][download][tag] = "7.x-2.7"
projects[stanford_capx][download][tag] = "7.x-1.3-php54"
projects[stanford_courses][download][tag] = "7.x-3.8"
projects[stanford_image][download][tag] = "7.x-3.4+11-dev"
projects[stanford_image_styles][download][tag] = "7.x-3.3"

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][tag] = "7.x-4.5+30-dev"
projects[stanford_jumpstart][subdir] = "stanford"

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][branch] = "7.x-3.3"
projects[stanford_manage_content][subdir] = "stanford"

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

; Libraries
; ---------

includes[core_libraries] = "core/core-libraries.make"

; Profiles
; --------

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.3"

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][branch] = "7.x-4.5+7-dev"

; Patches
; -------

includes[core_patches] = "core/core-patches.make"
