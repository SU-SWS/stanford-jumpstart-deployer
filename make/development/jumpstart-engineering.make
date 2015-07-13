; Jumpstart Engineering (JSE)
; ------------------------------------------------------------------------------

; Inherit all of the wonderfulness that is jumpstart academic.
includes[jsa] = "jumpstart-academic.make"

; JSE Profiles
; ------------------------------------------------------------------------------

projects[stanford_sites_jumpstart_engineering][type] = "profile"
projects[stanford_sites_jumpstart_engineering][download][type] = "git"
projects[stanford_sites_jumpstart_engineering][download][url] = "git@github.com:SU-SWS/stanford_sites_jumpstart_engineering.git"
projects[stanford_sites_jumpstart_engineering][download][branch] = "7.x-1.x"

; JSE Modules
; ------------------------------------------------------------------------------

projects[stanford_jumpstart_engineering][type] = "module"
projects[stanford_jumpstart_engineering][download][type] = "git"
projects[stanford_jumpstart_engineering][download][url] = "git@github.com:SU-SWS/stanford_jumpstart_engineering.git"
projects[stanford_jumpstart_engineering][download][branch] = "7.x-1.x"
projects[stanford_jumpstart_engineering][subdir] = "stanford"

projects[soe_jsa][type] = "module"
projects[soe_jsa][download][type] = "git"
projects[soe_jsa][download][url] = "git@github.com:SU-SWS/soe_jsa.git"
projects[soe_jsa][download][branch] = "7.x-1.x-dev"
projects[soe_jsa][subdir] = "stanford"


