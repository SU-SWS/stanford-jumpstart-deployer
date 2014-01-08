#!/bin/bash
# This script downloads and sets up a jumpstart site for installation
# After deploy.sh runs be sure to install the profile.

#Some variables for use later
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`

#Include Configuration Files
source configuration/deploy.conf
source scripts/includes/resources.conf.inc
source scripts/includes/resources.gather.inc

# Gather some data from the user into what and where we are building
# Sites has special deployment practices. Local should install everything.
echo "Is this a \"local\" or \"sites\" install? ( local | sites )"
read installation_type

echo "Is this a \"Jumpstart Academic Site\"? ( y | n )"
read installation_jsa

# Server drupal root
echo "Where should this site be installed. Please provide absolute system path. eg: /var/www"
read installation_path

# Gather all the things!
if [[ $installation_type == "sites" ]]; then

  echo Enter requester SUNetID
  read sunetid
  echo Enter requester Full Name
  read fullname
  echo Enter site shortname \(e.g., \"jumpstart-foo\" for sites.stanford.edu/jumpstart-foo\)
  read shortname

  install_sites_resources_directories
  install_sites_resources
  install_sites_links
  install_patches_via_git $resource_patches_contrib_file "modules/contrib"

else

  #Local sites tasks.
  install_local_resources_directories
  install_local_resources
  install_patches_via_git $resource_patches_contrib_file "sites/all/modules/contrib"

fi

# Special Cases
# If this area fills up too much then you need to rethink this.
if [[ $installation_type == "sites" ]]; then
  #Special tag checkout for webauth_extras
  cd "$installation_path/modules/stanford/webauth_extras"
  git checkout e2b1bb839ca5d20e1d0d6583f7c74a782d34d3f9
else
  #Special tag checkout for webauth_extras
  cd "$installation_path/sites/all/modules/stanford/webauth_extras"
  git checkout e2b1bb839ca5d20e1d0d6583f7c74a782d34d3f9
fi

cd $installation_path
# End Special Cases


# Create settings.php?
# echo "Would you like to automatically have a settings.php file created for you? ( y | n )"
# read installation_settings_php
# Try to create a settings.php file and install it.
# if [[ $installation_settings_php == 'y' ]]; then
#   echo "Please enter the name of the database:"
#   read installation_db_name
#   echo "Please enter the name of the database user:"
#   read installation_db_user
#   echo "Please enter the name of the database user password:"
#   read installation_db_pass
#   echo "Please enter the database server: \(eg: localhost\)"
#   read installation_db_server
#   source includes/create.settings.inc
# fi
