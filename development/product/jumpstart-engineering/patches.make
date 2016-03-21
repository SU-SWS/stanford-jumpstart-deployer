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

; https://www.drupal.org/node/1036962 | Edit link destination incorrect when using AJAX-enabled views
projects[views][patch][] = "https://www.drupal.org/files/views-fix-destination-link-for-ajax-1036962-29.patch"

; https://www.drupal.org/node/1819538 | More link disappears when time-based views cache is enabled
projects[views][patch][] = "https://www.drupal.org/files/issues/views-more_link_disappears_with_caching-1819538-6.patch"

; https://www.drupal.org/node/550428 No empty tags patch.
projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg-non-empty-tags.550428.79.patch"

; https://www.drupal.org/node/1687794 | WYSIWYG Filter - Validation occurs on disabled filter
projects[wysiwyg_filter][patch][] = "https://www.drupal.org/files/wysiwyg_filter-1687794-1-skip-validation-if-filter-disabled.patch"

; https://www.drupal.org/node/2221307 | Patch allows for field groups to be rendered in ds custom block regions
projects[ds][patch][] = "https://www.drupal.org/files/issues/ds_extras_field_group_not_rendered-2221307-18.patch"

