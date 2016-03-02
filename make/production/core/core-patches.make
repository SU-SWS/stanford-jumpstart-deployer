core = 7.x
api = 2

; https://www.drupal.org/node/2221307 | Patch allows for field groups to be rendered in ds custom block regions
projects[ds][patch][] = "https://www.drupal.org/files/issues/ds_extras_field_group_not_rendered-2221307-18.patch"

; https://www.drupal.org/node/2221307 | Deleting host entity causes save during deletion and triggers pathauto
projects[field_collection][patch][] = "https://www.drupal.org/files/issues/field_collection-2385985-27.patch"
