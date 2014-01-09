#!/bin/bash
#Install sites environment specific features

# Checks prepares and creates all neccessary directories.
function install_sites_resources_directories {

  # With the site deployer all the resources really should be
  # available to us. We should not have to do anything here.

  # Check to see if installation directory exists.
  if [ ! -d $installation_path ]; then
    echo "Installation directory does not exist. Check your site shortname. \n"
    echo "Path: " $installation_path
    return 0
  fi # end if siteroot

  return 1
}

# Installs resources into a sites configuration.
function install_sites_resources {

  #Install custom themes
  cd "$installation_path/themes"
  install_clone_git_branches $resource_git_themes_file

  #Install custom modules
  cd "$installation_path/modules/stanford"
  install_clone_git_branches $resource_git_modules_file
  install_clone_git_branches $resource_git_modules_core_file

  #Install contrib modules
  cd "$installation_path"
  # install_contrib_resources $resource_contrib_modules_core_file "sites/default/modules/contrib"
  install_contrib_resources $resource_contrib_modules_file "sites/default/modules/contrib"

  #If this site is an academic version we need some xtra resources
  if [[ $installation_jsa == "y" ]]; then
    cd "$installation_path/modules/stanford"
    install_clone_git_branches $resource_jsa_git_modules_file
    cd "$installation_path"
    install_contrib_resources $resource_jsa_contrib_modules_file "sites/default/modules/contrib"
  fi

  #Install libraries
  cd "$installation_path"
  install_libraries $resources_libraries_git_file "libraries"

  return 1
}

## Create symlinks to afs and fix permissions.
function install_sites_links {
  remctl publish1 drupal promote ds_$shortname
  remctl publish1 drupal fix-permissions ds_$shortname
  remctl publish2 drupal fix-permissions ds_$shortname
}
