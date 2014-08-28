core = 7.x
api = 2

; [missing url] No empty tags patch.
projects[wysiwyg][patch][] = "https://drupal.org/files/wysiwyg-non-empty-tags.550428.79.patch"

; https://drupal.org/node/1267966 - entity tokens bugs
projects[pathauto][patch][] = "https://drupal.org/files/pathauto_admin.patch"

; https://drupal.org/node/1326998 - PHP notice
projects[context_useragent][patch][] = "https://drupal.org/files/issues/context_useragent-undefined_offset_error-1326998-3.patch"

; https://drupal.org/node/1661722 - PHP notice
projects[context_http_headers][patch][] = "https://drupal.org/files/issues/context_http_headers-undefined-fix-1661722-2.patch"

; https://drupal.org/node/927566 & https://drupal.org/node/860974 | Menu Links will not import/revert
projects[features][patch][] = "https://drupal.org/files/issues/features-parent_identifier-927566-79.patch"
