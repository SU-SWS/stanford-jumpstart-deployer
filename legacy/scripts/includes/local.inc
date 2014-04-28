#!/bin/bash
#Install local (or other then sites) environment specific features


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
  install_clone_git_branches $resource_git_profiles_file

  mv 'Stanford-Drupal-Profile' 'stanford'
  mv 'stanford-jumpstart-profile' 'stanford_sites_jumpstart'
  mv 'stanford-jumpstart-academic-profile' 'stanford_sites_jumpstart_academic'

  return 1
}