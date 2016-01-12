core = 7.x
api = 2

; Profiles
; ------------------------------------------------------------------------------

projects[stanford][type] = "profile"
projects[stanford][download][type] = "git"
projects[stanford][download][url] = "git@github.com:SU-SWS/Stanford-Drupal-Profile.git"
projects[stanford][download][branch] = "7.x-2.x"
projects[stanford][do_recursion] = 0

projects[stanford_sites_abstract][type] = "profile"
projects[stanford_sites_abstract][download][type] = "git"
projects[stanford_sites_abstract][download][url] = "git@github.com:SU-SWS/stanford_sites_abstract.git"
projects[stanford_sites_abstract][download][branch] = "7.x-4.x"

projects[stanford_drupalcamp][type] = "profile"
projects[stanford_drupalcamp][download][type] = "git"
projects[stanford_drupalcamp][download][url] = "git@github.com:SU-SWS/stanford_drupalcamp.git"
projects[stanford_drupalcamp][download][branch] = "7.x-1.x-dev"
