#!/bin/bash
# Resource gathering functions dowload, clone, collect, harvest, etc code from
# all over and put them in the right place. Slight different configuration for
# sites and non sites installs.

# Checks prepares and creates all neccessary directories.
function install_sites_resources_directories {
  echo "SITES IS NOT READY YET!";
  return 1
}

# Checks prepares and creates all neccessary directories.
function install_local_resources_directories {

  # Check to see if installation directory exists.
  if [ ! -d $installation_path ]; then
    # Let conf supply the drupal version.
    if [ -z $conf_drupal_version]; then
      conf_drupal_version='drupal'
    fi

    # Let drush get drupal core.
    drush dl $conf_drupal_version --destination=$installation_path -y
    # If still no path then die.
    if [ ! -d $installation_path ]; then
      return 0
    fi

    cd $installation_path
    mv drupal*/* ./
    mv drupal*/.htaccess ./.htaccess
    mv drupal*/.gitignore ./.gitignore
    rm -R drupal*

  else
    echo "Installation directory exists. Continuing as site already installed."
  fi # end if siteroot

  # Create the sites directories
  if [ ! -d "$installation_path/sites/all/modules/contrib" ]; then
    mkdir "$installation_path/sites/all/modules/contrib"
    echo "Created contrib dir"
  fi
  # Create the sites directories
  if [ ! -d "$installation_path/sites/all/modules/custom" ]; then
    mkdir "$installation_path/sites/all/modules/custom"
    echo "Created custom dir"
  fi
  # Create the sites directories
  if [ ! -d "$installation_path/sites/all/modules/stanford" ]; then
    mkdir "$installation_path/sites/all/modules/stanford"
    echo "Created stanford dir"
  fi
  # Create the sites directories
  if [ ! -d "$installation_path/sites/all/libraries" ]; then
    mkdir "$installation_path/sites/all/libraries"
    echo "Created libraries dir"
  fi
  # Create the sites directories
  if [ ! -d "$installation_path/sites/default/files" ]; then
    mkdir "$installation_path/sites/default/files"
    echo "Created files dir"
  fi

  return 1
}

# Installs resources into a sites configuration.
function install_sites_resources {
  cd "$installation_path/themes"
  install_git_themes
  return 1
}

# Installs resources into a local configuration.
function install_local_resources {

  #Install custom themes
  cd "$installation_path/sites/all/themes"
  install_clone_git_branches $resource_git_themes_file

  #Install custom modules
  cd "$installation_path/sites/all/modules/stanford"
  install_clone_git_branches $resource_git_modules_file
  install_clone_git_branches $resource_git_modules_core_file

  #Install contrib modules
  cd "$installation_path"
  install_contrib_resources $resource_contrib_modules_core_file "sites/all/modules/contrib"
  install_contrib_resources $resource_contrib_modules_file "sites/all/modules/contrib"

  #If this site is an academic version we need some xtra resources
  if [[ $installation_jsa == "y" ]]; then
    cd "$installation_path/sites/all/modules/stanford"
    install_clone_git_branches $resource_jsa_git_modules_file
    cd "$installation_path"
    install_contrib_resources $resource_jsa_contrib_modules_file "sites/all/modules/contrib"
  fi

  #Install libraries
  install_libraries $resources_libraries_git_file "sites/all/libraries"

  #Install Installation Profiles
  cd "$installation_path/profiles"
  git clone git@github.com:SU-SWS/Stanford-Drupal-Profile.git -b 7.x-1.x-dev
  git clone git@bitbucket.org:sherakama/stanford_jumpstart_profile.git -b 7.x-1.x
  mv 'Stanford-Drupal-Profile' 'stanford'

  return 1
}


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
  cd ../
  install_clone_git_branches $1 $2

  #small custom hack
  mv stanford_sites_libraries/* libraries/
}
