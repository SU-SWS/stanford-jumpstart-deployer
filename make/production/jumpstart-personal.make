core = 7.x
api = 2

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0/make/stanford-themes.make"

includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0/make/libraries.make"
includes[core_libraries] = "core/core-libraries.make"


; Stanford Modules - GitHub
; -------------------------

projects[stanford_personal][type] = "module"
projects[stanford_personal][download][type] = "git"
projects[stanford_personal][download][url] = "git@github.com:SU-SWS/stanford_personal.git"
projects[stanford_personal][download][branch] = "7.x-1.x-dev"
projects[stanford_personal][subdir] = "stanford"

projects[cap_drupal][type] = "module"
projects[cap_drupal][download][type] = "git"
projects[cap_drupal][download][url] = "git@github.com:Stanford/CAP_drupal.git"
projects[cap_drupal][download][branch] = "master"
projects[cap_drupal][subdir] = "stanford"


; Stanford themes - Github
; ------------------------


; Libraries
; ---------


; Profiles
; --------

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.x"

projects[stanford_sites_jumpstart_personal][type] = "profile"
projects[stanford_sites_jumpstart_personal][download][type] = "git"
projects[stanford_sites_jumpstart_personal][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_personal.git"
projects[stanford_sites_jumpstart_personal][download][branch] = 7.x-4.2


; Patches
; -------

includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0/make/patches.make"
includes[core_patches] = "core/core-patches.make"


