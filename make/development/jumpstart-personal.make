core = 7.x
api = 2

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/stanford-themes.make"

includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/libraries.make"
includes[core_libraries] = "core/core-libraries.make"

; Contributed modules
; -------------------

; Stanford Modules - GitHub
; -------------------------

; Dev versions of the stanford projects on github.
includes[stanford_profile_dev] = core/stanford-profile-dev.make

; Contributed themes
; ------------------

; Stanford Modules - GitHub
; -------------------------

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][branch] = "7.x-4.x-dev"
projects[stanford_jumpstart][subdir] = "stanford"

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

; Found in remote stanford-themes.make

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
projects[stanford_sites_abstract][download][branch] = "7.x-1.x"

projects[stanford_sites_jumpstart_personal][type] = "profile"
projects[stanford_sites_jumpstart_personal][download][type] = "git"
projects[stanford_sites_jumpstart_personal][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_personal.git"
projects[stanford_sites_jumpstart_personal][download][branch] = "7.x-4.x"

; Patches last.
includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.x/make/patches.make"
includes[core_patches] = "core/core-patches.make"

