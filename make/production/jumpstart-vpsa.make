core = 7.x
api = 2
; Default directory should be sites/all/modules/contrib
defaults[projects][subdir] = contrib

; Modules, themes, libraries, and patches from Stanford Drupal Profile
; --------------------------------------------------------------------

; Commit hash is just after 7.x-2.5 release of profile.
includes[stanford_profile] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/01a0e8e79592fdbe425d7450f1ffd43e9ae8d4ec/make/stanford.make"
includes[stanford_themes] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/01a0e8e79592fdbe425d7450f1ffd43e9ae8d4ec/make/stanford-themes.make"
includes[stanford_libraries] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/01a0e8e79592fdbe425d7450f1ffd43e9ae8d4ec/make/libraries.make"
includes[core_libraries] = "core/core-libraries.make"


; Additional contrib modules
projects[field_formatter_settings][version] = "1.1"
projects[field_formatter_settings][subdir] = "contrib"
projects[simple_field_formatter][version] = "2.0-beta4"
projects[simple_field_formatter][subdir] = "contrib"
projects[chosen][version] = "2.0-beta4"
projects[chosen][subdir] = "contrib"
projects[faq][version] = "1.1"
projects[faq][subdir] = "contrib"
projects[bigmenu][version] = "1.3"
projects[bigmenu][subdir] = "contrib"

; Overrides until Stanford-Drupal-Profile gets up to speed.

projects[field_collection][version] = "1.x-dev"
projects[field_collection][subdir] = "contrib"
projects[field_collection][download][type] = "git"
projects[field_collection][download][url] = "http://git.drupal.org/project/field_collection.git"
projects[field_collection][download][revision] = "7506700007baef8a6c6700cdde9c8ee89a18628b"


; Contrib Dev Versions
; Because Dev Versions can change we want to target the specific commit hash
; that this build works with.

projects[workbench_moderation][version] = "1.x-dev"
projects[workbench_moderation][subdir] = "contrib"
projects[workbench_moderation][download][type] = "git"
projects[workbench_moderation][download][url] = "http://git.drupal.org/project/workbench_moderation.git"
projects[workbench_moderation][download][revision] = "56d8d1dc595058396cd06358e7c7cdc9f4c5e168"

projects[always_visible][type] = "module"
projects[always_visible][subdir] = "contrib"
projects[always_visible][download][type] = "git"
projects[always_visible][download][revision] = "a6c2dac352a6bb658644f66a3bd96b6e5805a6c1"
projects[always_visible][download][url] = "http://git.drupal.org/project/always_visible.git"

; Contributed themes
; ------------------

; Found in contrib.make


; Stanford Modules - GitHub
; -------------------------

projects[stanford_affiliate_organization][type] = "module"
projects[stanford_affiliate_organization][download][type] = "git"
projects[stanford_affiliate_organization][download][url] = "git@github.com:SU-SWS/stanford_affiliate_organization.git"
projects[stanford_affiliate_organization][download][tag] = "7.x-1.0"
projects[stanford_affiliate_organization][subdir] = "stanford"

projects[stanford_bean_types][download][tag] = "7.x-2.8"

projects[stanford_capx][download][tag] = "7.x-1.3+10-php54"

projects[stanford_carousel][download][tag] = "7.x-2.2"

projects[stanford_courses][download][tag] = "7.x-3.7"

projects[stanford_events_importer][download][url] = "git@github.com:SU-VPSA/stanford_events_importer.git"
projects[stanford_events_importer][download][tag] = "7.x-3.4-jsvpsa"

projects[stanford_faq][type] = "module"
projects[stanford_faq][download][type] = "git"
projects[stanford_faq][download][url] = "git@github.com:SU-SWS/stanford_faq.git"
projects[stanford_faq][download][branch] = "7.x-4.1"
projects[stanford_faq][subdir] = "stanford"

projects[stanford_fellowship][type] = "module"
projects[stanford_fellowship][download][type] = "git"
projects[stanford_fellowship][download][url] = "git@github.com:SU-SWS/stanford_fellowship.git"
projects[stanford_fellowship][download][tag] = "7.x-1.0"
projects[stanford_fellowship][subdir] = "stanford"

projects[stanford_gallery][type] = "module"
projects[stanford_gallery][download][type] = "git"
projects[stanford_gallery][download][url] = "git@github.com:SU-SWS/stanford_gallery.git"
projects[stanford_gallery][download][tag] = "7.x-2.0+3-dev"
projects[stanford_gallery][subdir] = "stanford"

projects[stanford_image][download][tag] = "7.x-3.4"

projects[stanford_image_styles][download][tag] = "7.x-3.3"

projects[stanford_jumpstart][type] = "module"
projects[stanford_jumpstart][download][type] = "git"
projects[stanford_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_jumpstart.git"
projects[stanford_jumpstart][download][tag] = "7.x-4.5+33-dev"
projects[stanford_jumpstart][subdir] = "stanford"

projects[stanford_jumpstart_vpsa][type] = "module"
projects[stanford_jumpstart_vpsa][download][type] = "git"
projects[stanford_jumpstart_vpsa][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_vpsa.git"
projects[stanford_jumpstart_vpsa][download][tag] = "7.x-4.6+8-dev"
projects[stanford_jumpstart_vpsa][subdir] = "stanford"

projects[stanford_landing_page][type] = "module"
projects[stanford_landing_page][download][type] = "git"
projects[stanford_landing_page][download][url] = "git@github.com:SU-SWS/stanford_landing_page.git"
projects[stanford_landing_page][download][tag] = "7.x-1.3+9-dev"
projects[stanford_landing_page][subdir] = "stanford"

projects[stanford_manage_content][type] = "module"
projects[stanford_manage_content][download][type] = "git"
projects[stanford_manage_content][download][url] = "git@github.com:SU-SWS/stanford_manage_content.git"
projects[stanford_manage_content][download][tag] = "7.x-3.3+6-dev"
projects[stanford_manage_content][subdir] = "stanford"

projects[stanford_news][type] = "module"
projects[stanford_news][download][type] = "git"
projects[stanford_news][download][url] = "git@github.com:SU-VPSA/stanford_news.git"
projects[stanford_news][download][tag] = "7.x-3.3-jsvpsa"
projects[stanford_news][subdir] = "stanford"

projects[stanford_page][download][url] = "git@github.com:SU-VPSA/stanford_page.git"
projects[stanford_page][download][tag] = "7.x-2.2-jsvpsa"

projects[stanford_person][download][url] = "git@github.com:SU-VPSA/stanford_person.git"
projects[stanford_person][download][tag] = "7.x-5.0-jsvpsa"

projects[stanford_private_page][type] = "module"
projects[stanford_private_page][download][type] = "git"
projects[stanford_private_page][download][url] = "git@github.com:SU-SWS/stanford_private_page.git"
projects[stanford_private_page][download][tag] = "7.x-1.0"
projects[stanford_private_page][subdir] = "stanford"

projects[stanford_slides][download][url] = "git@github.com:SU-VPSA/stanford_slides.git"
projects[stanford_slides][download][tag] = "7.x-3.0-jsvpsa"

projects[stanford_subsites][type] = "module"
projects[stanford_subsites][download][type] = "git"
projects[stanford_subsites][download][url] = "git@github.com:SU-SWS/stanford_subsites.git"
projects[stanford_subsites][download][tag] = "7.x-2.1"
projects[stanford_subsites][subdir] = "stanford"

projects[stanford_video][download][tag] = "7.x-2.1+5-dev"

; Stanford themes - Github
; ------------------------

; Found in core-stanford.make

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

projects[stanfordmodern][type] = "theme"
projects[stanfordmodern][download][type] = "git"
projects[stanfordmodern][download][url] = "git@github.com:su-ddd/stanfordmodern.git"
projects[stanfordmodern][download][branch] = "7.x-1.x"

projects[stanford_jordan][type] = "theme"
projects[stanford_jordan][download][type] = "git"
projects[stanford_jordan][download][url] = "git@github.com:SU-SWS/stanford_jordan.git"
projects[stanford_jordan][download][branch] = "7.x-2.x"

projects[stanford_framework][download][tag] = "7.x-3.2-dev+9"

projects[open_framework][download][tag] = "7.x-2.4+11-dev"

; Libraries
; ---------

libraries[stanford_sites_content_importer][download][type] = "git"
libraries[stanford_sites_content_importer][download][url] = "git@github.com:SU-SWS/stanford_sites_content_importer"
libraries[stanford_sites_content_importer][download][tag] = FALSE
libraries[stanford_sites_content_importer][download][branch] = "7.x-1.x"
libraries[stanford_sites_content_importer][destination] = "libraries"

libraries[chosen][download][type] = "get"
libraries[chosen][download][url] = "https://github.com/harvesthq/chosen/releases/download/v1.1.0/chosen_v1.1.0.zip"
libraries[chosen][directory_name] = "chosen"
libraries[chosen][destination] = "libraries"

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
projects[stanford_sites_jumpstart][download][tag] = "7.x-4.5+11-dev"
projects[stanford_sites_jumpstart][subdir] = FALSE

projects[stanford_sites_jumpstart_vpsa][type] = "profile"
projects[stanford_sites_jumpstart_vpsa][download][type] = "git"
projects[stanford_sites_jumpstart_vpsa][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_vpsa.git"
projects[stanford_sites_jumpstart_vpsa][download][tag] = "7.x-4.6+14-dev"
projects[stanford_sites_jumpstart_vpsa][subdir] = FALSE

; Patches
; -------

includes[stanford_patches] = "https://raw.githubusercontent.com/SU-SWS/Stanford-Drupal-Profile/01a0e8e79592fdbe425d7450f1ffd43e9ae8d4ec/make/patches.make"
includes[core_patches] = "core/core-patches.make"
