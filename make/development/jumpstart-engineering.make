; Jumpstart Engineering (JSE)
; ------------------------------------------------------------------------------

; Inherit all of the wonderfulness that is jumpstart academic.
includes[jsa] = "jumpstart-academic.make"

; JSE Profiles
; ------------------------------------------------------------------------------

projects[stanford_sites_jumpstart_engineering][type] = "profile"
projects[stanford_sites_jumpstart_engineering][download][type] = "git"
projects[stanford_sites_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_sites_jumpstart_engineering.git"
projects[stanford_sites_jumpstart_engineering][download][branch] = "7.x-1.x"

; JSE Modules
; ------------------------------------------------------------------------------

projects[stanford_jumpstart_engineering][type] = "module"
projects[stanford_jumpstart_engineering][download][type] = "git"
projects[stanford_jumpstart_engineering][download][url] = "git@github.com:SU-SOE/stanford_jumpstart_engineering.git"
projects[stanford_jumpstart_engineering][download][branch] = "7.x-1.x"
projects[stanford_jumpstart_engineering][subdir] = "stanford"


