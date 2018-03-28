core = 7.x
api = 2
; Default directory should be sites/all/modules/contrib
defaults[projects][subdir] = contrib

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

; Commit hash is just after 7.x-2.6 release of profile.
includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/1f3880eb8a6fbe4f9d66b2521b581f5283acc4f9/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/1f3880eb8a6fbe4f9d66b2521b581f5283acc4f9/make/stanford-themes.make"
includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/1f3880eb8a6fbe4f9d66b2521b581f5283acc4f9/make/patches.make"
includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/1f3880eb8a6fbe4f9d66b2521b581f5283acc4f9/make/libraries.make"

; Temporary until Stanford-Drupal-Profile gets updated
projects[field_collection][version] = "1.0-beta11"

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

; Profiles
; --------

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.x"
projects[stanford_sites_abstract][subdir] = FALSE

projects[stanford_sites_jumpstart_personal][type] = "profile"
projects[stanford_sites_jumpstart_personal][download][type] = "git"
projects[stanford_sites_jumpstart_personal][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_personal.git"
projects[stanford_sites_jumpstart_personal][download][branch] = 7.x-4.2
projects[stanford_sites_jumpstart_personal][subdir] = FALSE


; Patches
; -------

includes[core_patches] = "core/core-patches.make"
