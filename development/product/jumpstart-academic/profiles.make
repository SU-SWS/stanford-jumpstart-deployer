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

projects[stanford_sites_jumpstart][type] = "profile"
projects[stanford_sites_jumpstart][download][type] = "git"
projects[stanford_sites_jumpstart][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart.git"
projects[stanford_sites_jumpstart][download][branch] = "7.x-4.x-dev"

projects[stanford_sites_jumpstart_academic][type] = "profile"
projects[stanford_sites_jumpstart_academic][download][type] = "git"
projects[stanford_sites_jumpstart_academic][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_academic.git"
projects[stanford_sites_jumpstart_academic][download][branch] = "7.x-4.x"
