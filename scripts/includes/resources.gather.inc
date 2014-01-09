#!/bin/bash
# Resource gathering functions dowload, clone, collect, harvest, etc code from
# all over and put them in the right place. Slight different configuration for
# sites and non sites installs.


## ---------
# COMMON
# ----------

# Install Git Stored Resources
# Try to clone the correct branch. Git will fail if the directory already
# exists. In that case let install requirements ensure proper branch/version.
# @param $1 - Absolute path to resource file.
function install_clone_git_branches {
  IFS="="
  while read -r repo branch
  do
    git clone $repo -b $branch
  done < $1
}

# Install contrib modules using drush
# @param $1 - Absolute path to resource file
# @param $2 - Destination to install contrib
function install_contrib_resources {
  dest=$2
  while read line;
  do
    drush dl $line -y --destination="$dest"
  done < $1
}

# Install contrib patches
# @param $1 - Absolute path to resource file
# @param $2 - Destination folder
function install_patches_via_git {
  IFS=","
  dest=$2
  while read -r module patch_path patch_name
  do
    cd "$installation_path/$dest/$module"
    curl $patch_path -o $patch_name
    git apply $patch_name
  done < $1
}

# Install libraries
# @param $1 - Absolute path to resource file
# @param $2 - Destination folder
function install_libraries {
  cd "$installation_path/$2"
  install_clone_git_branches $1 $2
  mv stanford_sites_libraries/* ./
  rm -Rf stanford_sites_libraries
}
