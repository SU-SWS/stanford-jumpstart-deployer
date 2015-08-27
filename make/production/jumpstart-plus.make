core = 7.x
api = 2

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/stanford-themes.make"
includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/patches.make"
includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/libraries.make"
includes[core_libraries] = "core/core-libraries.make"

; Contributed themes
; ------------------


; Stanford Modules - GitHub
; -------------------------

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][branch] = "7.x-4.5"
projects[stanford_jumpstart][subdir] = "stanford"

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][branch] = "7.x-3.3"
projects[stanford_manage_content][subdir] = "stanford"

projects[stanford_news][type] = "module"
projects[stanford_news][download][type] = "git"
projects[stanford_news][download][url] = "git@github.com:SU-SWS/stanford_news.git"
projects[stanford_news][download][branch] = "7.x-3.1"
projects[stanford_news][subdir] = "stanford"

projects[stanford_jumpstart_plus][type] = "module"
projects[stanford_jumpstart_plus][download][type] = "git"
projects[stanford_jumpstart_plus][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_plus.git"
projects[stanford_jumpstart_plus][download][branch] = "7.x-4.5"
projects[stanford_jumpstart_plus][subdir] = "stanford"

projects[stanford_jumpstart_home][type] = "module"
projects[stanford_jumpstart_home][download][type] = "git"
projects[stanford_jumpstart_home][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_home.git"
projects[stanford_jumpstart_home][download][branch] = "7.x-1.3"
projects[stanford_jumpstart_home][subdir] = "stanford"

projects[stanford_landing_page][type] = "module"
projects[stanford_landing_page][download][type] = "git"
projects[stanford_landing_page][download][url] = "git@github.com:SU-SWS/stanford_landing_page.git"
projects[stanford_landing_page][download][branch] = "7.x-1.2"
projects[stanford_landing_page][subdir] = "stanford"


; Stanford themes - Github
; ------------------------


; Profiles
; --------

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.2-dev+1"

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][branch] = "7.x-4.5-dev+1"

projects[stanford_sites_jumpstart_plus][type] = "profile"
projects[stanford_sites_jumpstart_plus][download][type] = "git"
projects[stanford_sites_jumpstart_plus][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_plus.git"
projects[stanford_sites_jumpstart_plus][download][branch] = "7.x-4.5-dev+1"

; Patches
; -------

includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/patches.make"
includes[core_patches] = "core/core-patches.make"
