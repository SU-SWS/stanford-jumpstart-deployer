core = 7.x
api = 2

; Contributed modules

projects[s3fs][subdir] = "contrib"
projects[s3fs][version] = "2.0"

projects[smtp][subdir] = "contrib"
projects[smtp][version] = "1.7"

; Custom modules, github
projects[anchorage_helper][subdir] = "stanford"
projects[anchorage_helper][type] = "module"
projects[anchorage_helper][download][type] = "git"
projects[anchorage_helper][download][url] = "git@github.com:SU-SWS/anchorage_helper.git"
projects[anchorage_helper][download][branch] = "7.x-1.x"

projects[stanford_ssp][subdir] = "stanford"
projects[stanford_ssp][type] = "module"
projects[stanford_ssp][download][type] = "git"
projects[stanford_ssp][download][url] = "git@github.com:SU-SWS/stanford_ssp.git"
projects[stanford_ssp][download][branch] = "7.x-2.x"

projects[stanford_s3fs_if][subdir] = "stanford"
projects[stanford_s3fs_if][type] = "module"
projects[stanford_s3fs_if][download][type] = "git"
projects[stanford_s3fs_if][download][url] = "git@github.com:SU-SWS/stanford_s3fs_if.git"
projects[stanford_s3fs_if][download][branch] = "7.x-1.x"

; Libraries
; ---------
libraries[awssdk2][download][type] = "get"
libraries[awssdk2][download][url] = "https://github.com/aws/aws-sdk-php/releases/download/2.6.3/aws.zip"
libraries[awssdk2][directory_name] = "awssdk2"
libraries[awssdk2][destination] = "libraries"
