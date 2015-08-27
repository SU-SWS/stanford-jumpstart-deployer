core = 7.x
api = 2

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/stanford-themes.make"
includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/patches.make"
includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/libraries.make"
includes[core_libraries] = "core/core-libraries.make"

projects[context_http_headers][version] = "1.0"
projects[context_http_headers][subdir] = "contrib"
projects[field_formatter_settings][version] = "1.1"
projects[field_formatter_settings][subdir] = "contrib"
projects[simple_field_formatter][version] = "2.0-beta2"
projects[simple_field_formatter][subdir] = "contrib"


; Contrib Dev Versions
; Because Dev Versions can change we want to target the specific commit hash
; that this build works with.

projects[field_collection][version] = "1.x"
projects[field_collection][subdir] = "contrib"
projects[field_collection][download][type] = "git"
projects[field_collection][download][url] = "http://git.drupal.org/project/field_collection.git"
projects[field_collection][download][revision] = "9b507ac41c14f590f620c57ff0a766c4363f1a17"

projects[workbench_moderation][version] = "1.x-dev"
projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][download][type] = "git"
projects[workbench_moderation][download][url] = "http://git.drupal.org/project/workbench_moderation.git"
projects[workbench_moderation][download][revision] = "5c2769ac58b4fc28b1c103444b9584af118e522e"

; Contributed themes
; ------------------

; Found in contrib.make


; Stanford Modules - GitHub
; -------------------------

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][branch] = "7.x-4.3"
projects[stanford_jumpstart][subdir] = "stanford"

projects[stanford_jumpstart_vpsa][type] = "module"
projects[stanford_jumpstart_vpsa][download][type] = "git"
projects[stanford_jumpstart_vpsa][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_vpsa.git"
projects[stanford_jumpstart_vpsa][download][branch] = "7.x-4.3"
projects[stanford_jumpstart_vpsa][subdir] = "stanford"

projects[stanford_page][type] = "module"
projects[stanford_page][download][type] = "git"
projects[stanford_page][download][url] = "git@github.com:SU-SWS/stanford_page.git"
projects[stanford_page][download][branch] = "7.x-2.x-jsvpsa"
projects[stanford_page][download][tag] = FALSE
projects[stanford_page][subdir] = "stanford"

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][branch] = "7.x-3.3"
projects[stanford_manage_content][subdir] = "stanford"

projects[stanford_news][type] = "module"
projects[stanford_news][download][type] = "git"
projects[stanford_news][download][url] = "git@github.com:SU-SWS/stanford_news.git"
projects[stanford_news][download][branch] = "7.x-3.x-jsvpsa"
projects[stanford_news][download][tag] = FALSE
projects[stanford_news][subdir] = "stanford"


; Overrides from the core make files
; ----------------------------------

projects[stanford_events_importer][download][branch] = "7.x-3.x-jsvpsa"
projects[stanford_events_importer][download][tag] = FALSE
projects[stanford_slides][download][branch] = "7.x-3.x-jsvpsa"
projects[stanford_slides][download][tag] = FALSE



; Stanford themes - Github
; ------------------------

; Found in core-stanford.make

projects[stanfordmodern][type] = "theme"
projects[stanfordmodern][download][type] = "git"
projects[stanfordmodern][download][url] = "git@github.com:su-ddd/stanfordmodern.git"
projects[stanfordmodern][download][branch] = "7.x-1.x"

projects[stanford_wilbur][type] = "theme"
projects[stanford_wilbur][download][type] = "git"
projects[stanford_wilbur][download][url] = "git@github.com:SU-SWS/stanford_wilbur.git"
projects[stanford_wilbur][download][branch] = "7.x-2.1"

; Profiles
; --------

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.x"

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][branch] = "7.x-4.3"

projects[stanford_sites_jumpstart_vpsa][type] = "profile"
projects[stanford_sites_jumpstart_vpsa][download][type] = "git"
projects[stanford_sites_jumpstart_vpsa][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_vpsa.git"
projects[stanford_sites_jumpstart_vpsa][download][branch] = "7.x-4.3-dev+1"

; Patches
; -------

includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/7.x-2.0-dev+5/make/patches.make"
includes[core_patches] = "core/core-patches.make"
