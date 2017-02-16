core = 7.x
api = 2

; Patches
; ------------------------------------------------------------------------------

; https://www.drupal.org/node/2471911 Form validation fails with "the directory is not writable" when public file system is remote
projects[css_injector][patch][] = "https://www.drupal.org/files/issues/css_injector-remove_drupal_realpath-2471911-2.patch"

; https://www.drupal.org/node/2160385 - PHP notices after clicking "Edit rule"
projects[css_injector][patch][] = "https://www.drupal.org/files/issues/css_injector-bad_crid_protection-2160385-10.patch"

; https://www.drupal.org/node/2375235 Calendar block Next/Prev navigation broken
projects[date][patch][] = "https://www.drupal.org/files/issues/calendar_pager_broken-2375235-35.patch"

; https://drupal.org/node/927566 & https://drupal.org/node/860974 | Menu Links will not import/revert
projects[features][patch][] = "https://drupal.org/files/issues/features-parent_identifier-927566-79.patch"

; https://drupal.org/node/1267966 - entity tokens bugs
projects[pathauto][patch][] = "https://drupal.org/files/pathauto_admin.patch"

; https://www.drupal.org/node/550428 No empty tags patch.
projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg-non-empty-tags.550428.79.patch"

; https://www.drupal.org/node/2221307 | Patch allows for field groups to be rendered in ds custom block regions
projects[ds][patch][] = "https://www.drupal.org/files/issues/ds_extras_field_group_not_rendered-2221307-18.patch"

; https://www.drupal.org/node/2713921 | Cannot install on mysql 5.7+
projects[jw_player][patch][] = "https://www.drupal.org/files/issues/jw-player-mysql57-2713921-8.patch"

; https://www.drupal.org/node/2567431 | PHP 7 critical error fix
projects[feeds_tamper][patch][] = "https://www.drupal.org/files/issues/feeds_tamper-fix-params-default-value-callback-2567431-2-7.x.patch"
