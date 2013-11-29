#!/bin/bash
# This script will deploy a version of Stanford Sites Jumpstart to the desired location
# Run this from publish1 or publish2
# Read the README in this directory about git branches

#Include configuration file
source ../configuration/provision.conf

#Collect some data
# echo Enter Site Name
# read sitename
# echo Enter requester SUNetID
# read sunetid
# echo Enter requester Full Name
# read fullname
# echo Enter site shortname \(e.g., \"jumpstart-foo\" for sites.stanford.edu/jumpstart-foo\)
# read shortname
# echo Is this a Jumpstart Academic site\? \(Y/N\)
# read jumpstart_academic

sitename="Shea"
sunetid="sheamck"
fullname="Shea McKinney"
shortname="jump"
jumpstart_academic='Y'

# set drush site root
provision_name=$conf_site_root_prefix$shortname$conf_site_root_suffix
siteroot=$conf_site_root$provision_name

#Alert one more time
# read -p "You are about to deploy Jumpstart to https://sites.stanford.edu/$shortname. Hit the Enter key to continue..."

#Check to see if the resources exist
cd $conf_site_root

#If Provision doesnt exist dl drupal and configure it
if [ ! -d $provision_name ] && $conf_is_local; then
  #mkdir $provision_name
  drush dl $conf_drupal_version -y
  mv $conf_drupal_version $provision_name
  chown $conf_server_user":"$conf_server_group $provision_name
  chmod -R $conf_server_mode $provision_name
fi

# Move into drupal root
cd $provision_name

#Check for settings.php file
if [ ! -f $siteroot"/sites/$conf_drupal_sites_folder/settings.php" ] && $conf_is_local; then

  cp $siteroot"/sites/$conf_drupal_sites_folder/default.settings.php" $siteroot"/sites/$conf_drupal_sites_folder/settings.php"

  if [ "$conf_mysql_db_name" = "use sitename" ]; then
    conf_mysql_db_name="$provision_name"
  fi

dbsettings="\$databases = array (
  'default' =>
  array (
    'default' =>
    array (
      'database' => '$conf_mysql_db_name',
      'username' => '$conf_mysql_user',
      'password' => '$conf_mysql_pass',
      'host' => '$conf_mysql_server',
      'port' => '',
      'driver' => 'mysql',
      'prefix' => '',
    ),
  ),
);"

  echo "\n $dbsettings" >> $siteroot"/sites/$conf_drupal_sites_folder/settings.php"
  drush si standard -y

fi

#Set the doc root
docroot=$siteroot

#If we are working locally then docroot should be in the sites/something folder
if $conf_is_local = true; then
  docroot=$siteroot"/sites/$conf_drupal_sites_folder"
  cd $docroot
fi

#copy admin theme
if [ ! -d $docroot"/themes" ]; then
  mkdir $docroot"/themes"
fi

cd $docroot/themes

git clone -b 7.x-1.x git@github.com:SU-SWS/stanford_seven
git clone -b 7.x-2.x git@github.com:SU-SWS/open_framework
git clone -b 7.x-2.x git@github.com:SU-SWS/stanford_framework
git clone -b 7.x-2.x git@github.com:SU-SWS/stanford_wilbur


if $conf_is_local = false; then
#remctl command to create symlinks to stanford_framework themes and subthemes
  remctl publish1 drupal promote ds_$shortname
  remctl publish1 drupal fix-permissions ds_$shortname
  remctl publish2 drupal fix-permissions ds_$shortname
fi

#enable themes
drush --root=$siteroot -y en open_framework stanford_framework stanford_wilbur stanford_seven

# download contrib modules
echo Downloading contrib modules...

if [ ! -d $docroot"/modules" ]; then
  mkdir $docroot"/modules"
fi

mkdir $docroot/modules/contrib $docroot/modules/stanford $docroot/modules/custom
drush dl admin_menu-7.x-3.0-rc4 metatag-7.x-1.0-beta7 pathologic-7.x-2.11 views-7.x-3.7 wysiwyg-7.x-2.2 --destination=$docroot/modules/contrib

# patch WYSIWYG
cd $docroot/modules/contrib/wysiwyg
curl -O https://drupal.org/files/wysiwyg-non-empty-tags.550428.79.patch
git apply wysiwyg-non-empty-tags.550428.79.patch

# git clone stanford modules
cd $docroot/modules/stanford
git clone -b 7.x-3.x-dev git@github.com:SU-SWS/stanford_jumpstart
git clone -b 7.x-2.x-dev git@github.com:SU-SWS/stanford_image
git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_image_styles
git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_metatag_nobots
git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_bean_types
git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_page

git clone git@github.com:Stanford/webauth_extras
cd $docroot/modules/stanford/webauth_extras/
git checkout e2b1bb839ca5d20e1d0d6583f7c74a782d34d3f9

#Reset for no confusion later.
cd $docroot


##########
# Logic! #
##########
if test $jumpstart_academic = Y; then

  # Set the variable
  drush --root=$siteroot -y vset stanford_jumpstart_academic TRUE

  # Stanford modules
  cd $docroot/modules/stanford/
  git clone -b 7.x-2.x git@github.com:SU-SWS/stanford_events_importer
  git clone -b 7.x-2.x-dev git@github.com:SU-SWS/stanford_courses
  git clone -b 7.x-2.x-dev git@github.com:SU-SWS/stanford_news
  git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_publication
  git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_course_views
  git clone -b 7.x-2.x-dev git@github.com:SU-SWS/stanford_manage_content
  git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_events_views
  git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_date_formats
  git clone -b 7.x-3.x-dev git@github.com:SU-SWS/stanford_person
  git clone -b 7.x-1.x-dev git@github.com:SU-SWS/stanford_person_views

  drush dl  feeds_tamper-7.x-1.x-dev feeds-7.x-2.0-alpha8 services-7.x-3.5 uuid-7.x-1.x-dev uuid_features-7.x-1.x-dev menu_import-7.x-1.x-dev --destination=$docroot/modules/contrib

  # Enable the things!
  drush --root=$siteroot -y en bean_uuid menu_import menu_position rest_server services stanford_events_importer stanford_jsa_services_endpoint stanford_manage_content stanford_news stanford_publication uuid uuid_features uuid_path uuid_services stanford_events_views stanford_date_formats stanford_person stanford_person_views
  # set up Views in developer mode
  drush --root=$siteroot vd

fi


# rebuild registry
drush --root=$siteroot rr
# disable comment module
drush --root=$siteroot -y dis comment clone
# enable modules
drush --root=$siteroot -y en stanford_image block_class metatag context_accordion diff
# clear cache for good measure
drush --root=$siteroot cc all
# disable blocks we don't want
drush --root=$siteroot sqlq 'update block set status=0 where module="webauth" and delta="webauth_login_block"'
drush --root=$siteroot sqlq 'update block set status=0 where module="system" and delta="navigation"'
drush --root=$siteroot sqlq 'update block set status=0 where module="search" and delta="form"'
drush --root=$siteroot sqlq 'update block set status=0 where module="stanford_sites_helper" and delta="firststeps"'
drush --root=$siteroot sqlq 'update block set status=0 where module="stanford_sites_helper" and delta="helplinks"'
drush --root=$siteroot sqlq 'update block set status=0 where module="user" and delta="login"'
# disable stanford_wysiwyg because it conflicts with stanford_jumpstart_wysiwyg
drush --root=$siteroot -y dis stanford_wysiwyg
# enable subsequent modules. Need to be sure stanford_image is fully loaded before doing the others
drush --root=$siteroot -y en stanford_jumpstart stanford_jumpstart_roles stanford_jumpstart_wysiwyg context_respect menu_block stanford_metatag_nobots context_ui stanford_jumpstart_shortcuts

if $conf_is_local = false; then
  drush --root=$siteroot -y en webauth_extras
fi

# Enable the appropriate layout module
if test $jumpstart_academic = Y; then
  drush --root=$siteroot -y en stanford_jsa_layouts
  drush --root=$siteroot -y en stanford_jsa_roles
else
  drush --root=$siteroot -y en stanford_jumpstart_layouts
fi

if test $jumpstart_academic = Y; then
  # add Jumpstart Academic block classes
  drush --root=$siteroot sqlq 'insert into block_class (module, delta, css_class) values ("bean","jumpstart-home-page-about","well"), ("bean","homepage-banner-image","block-no-bottom-margin"), ("bean","jumpstart-affiliated-programs","well"), ("bean","jumpstart-contact-us-postcard","well"), ("bean","jumpstart-degree-programs-info-f","well"), ("bean","jumpstart-featured-course","well"), ("bean","jumpstart-featured-event","well"), ("bean","jumpstart-featured-event-block","well"), ("bean","jumpstart-footer-contact-block","span2"), ("bean","jumpstart-footer-social-media--0","span2"), ("bean","jumpstart-footer-social-media-co","span4"), ("bean","jumpstart-graduate-student-sideb","well"), ("bean","jumpstart-home-page-academics","well"), ("bean","jumpstart-info-for-current-gra-0","span4 well"), ("bean","jumpstart-info-for-current-gra-1","span4 well"), ("bean","jumpstart-info-for-current-gradu","span4 well"), ("bean","jumpstart-info-for-current-und-0","span4 well"), ("bean","jumpstart-info-for-current-und-1","span4 well"), ("bean","jumpstart-info-for-current-under","span4 well"), ("bean","jumpstart-info-for-prospective-0","span4 well"), ("bean","jumpstart-info-for-prospective-1","span4 well"), ("bean","jumpstart-info-for-prospective-g","span4 well"), ("bean","jumpstart-twitter-block","well"), ("bean","jumpstart-why-i-teach","well"), ("bean","jumpstart-why-i-teach-block","well"), ("bean","optional-footer-block","span4"), ("bean","social-media","span4"), ("ds_extras","contact","well"), ("ds_extras","office_hours","well"), ("menu","menu-admin-shortcuts-add-feature","shortcuts-features"), ("menu","menu-admin-shortcuts-get-help","shortcuts-help"), ("menu","menu-admin-shortcuts-home","shortcuts-home"), ("menu","menu-admin-shortcuts-logout-link","shortcuts-logout"), ("menu","menu-admin-shortcuts-ready-to-la","shortcuts-launch"), ("menu","menu-admin-shortcuts-site-action","shortcuts-actions shortcuts-dropdown"), ("menu","menu-footer-news-events-menu","span2"), ("menu","menu-footer-people-menu","span2"), ("menu","menu-footer-academics-menu","span2"), ("menu","menu-footer-about-menu","span2"), ("stanford_jumpstart_layouts","jumpstart-launch","shortcuts-launch-block"), ("views","-exp-publications-page","well"), ("views","f73ff55b085ea49217d347de6630cd5a","well"), ("views","jumpstart_current_user-block","shortcuts-user"), ("views","publications-block_4","well"), ("views","stanford_news-block","well"), ("views","stanford_events_views-block","well"), ("views","-exp-stanford_person_staff-page","well"), ("views","442e92af913370af5bffd333a036ceaa","well"), ("views","b38da907588eed2d09c10bdb381e5aaf","well")'
else
  # add Jumpstart block classes
drush --root=$siteroot sqlq 'insert into block_class (module, delta, css_class) values ("bean","social-media","span4"), ("bean","contact-block","span4"), ("bean","optional-footer-block","span4"), ("bean","homepage-about-block","well"), ("bean","flexi-block-for-the-home-page","well"), ("bean","jumpstart-footer-social-media-co","span4"), ("bean","jumpstart-footer-contact-block","span4"), ("bean","jumpstart-footer-social-media--0","span4"), ("menu","menu-admin-shortcuts-home","shortcuts-home"), ("menu","menu-admin-shortcuts-site-action","shortcuts-actions shortcuts-dropdown"), ("menu","menu-admin-shortcuts-add-feature","shortcuts-features"), ("menu","menu-admin-shortcuts-get-help","shortcuts-help"), ("menu","menu-admin-shortcuts-ready-to-la","shortcuts-launch"), ("stanford_jumpstart_layouts","jumpstart-launch","shortcuts-launch-block"), ("menu","menu-admin-shortcuts-logout-link","shortcuts-logout")'
fi

# revert all of our features. yeah I want cheesy poofs!
drush --root=$siteroot fra --force -y

# Enable the appropriate content module
if test $jumpstart_academic = Y; then

  if $conf_is_local = false; then
    drush --root=$siteroot upwd admin --password="SpruceF3"
    # Deploy!!
    drush -root=/var/www/ds_jsa-content/public_html deploy jumpstart_academic_taxonomy_terms
    drush -root=/var/www/ds_jsa-content/public_html deploy jumpstart_academic_field_collections
    drush -root=/var/www/ds_jsa-content/public_html deploy jumpstart_academic_beans
    drush -root=/var/www/ds_jsa-content/public_html deploy jumpstart_academic_nodes
    drush --root=$siteroot -y en stanford_jsa_content
    # Set user 1 password to a random string
    # adminpass="cat /dev/urandom | tr -cd a-zA-Z0-9_+=*\ | fold -w18 | head -n 1"
    adminpass = drush php-eval "echo user_password(10);"

    drush --root=$siteroot upwd admin --password="$adminpass"
    # disable stanford_jsa_content
    drush --root=$siteroot -y dis stanford_jsa_content
  else
    drush dl devel -y
    drush en devel devel_generate -y

    drush gent stanford_faculty_type
    drush gent stanford_field_of_study
    drush gent news_categories
    drush gent publication_type
    drush gent stanford_interests
    drush gent stanford_staff_type
    drush gent stanford_event_audience
    drush gent stanford_event_categories
    drush gent stanford_student_type

    drush genc 60 --types=stanford_page -y
    drush genc 30 --types=stanford_event -y
    drush genc 1 --types=stanford_event_importer -y
    drush genc 60 --types=stanford_news_item -y
    drush genc 10 --types=stanford_person -y
    drush genc 60 --types=stanford_publication -y

    # Rename some titles and pages to match for the menu.
    drush --root=$siteroot '../inc/rename-pages.drush'
  fi


else
  # enable, then disable, stanford_jumpstart_content (we only care about hook_install() running)
  drush --root=$siteroot -y en stanford_jumpstart_content
  drush --root=$siteroot -y dis stanford_jumpstart_content
fi

# clear cache for good measure
drush --root=$siteroot cc all

#update database
drush --root=$siteroot -y updb

# read -p "Ready to run final site configuration. Hit any key to continue..."

# set default themes
drush --root=$siteroot -y vset theme_default stanford_wilbur
drush --root=$siteroot -y vset admin_theme stanford_seven
drush --root=$siteroot -y vset node_admin_theme stanford_seven
# set site name
drush --root=$siteroot -y vset site_name "$sitename"
# change WMD login text
drush --root=$siteroot -y vset webauth_link_text "SUNetID Login"
# turn off local login block
drush --root=$siteroot -y vset webauth_allow_local 0
# clear caches
drush --root=$siteroot -y cc all

# import the menus; do this now because there was incompleteness when doing it immediately after running the Deployment plans
if test $jumpstart_academic = Y; then
  # Set site frontpage to /home, and page not found to /404
  drush --root=$siteroot php-script inc/site-frontpage-404.php
  # import menus
  drush --root=$siteroot mi inc/main-menu-export.txt main-menu --clean-import
  drush --root=$siteroot mi inc/menu-footer-about-menu.txt menu-footer-about-menu --clean-import
  drush --root=$siteroot mi inc/menu-footer-academics-menu.txt menu-footer-academics-menu --clean-import
  drush --root=$siteroot mi inc/menu-footer-news-events-menu.txt menu-footer-news-events-menu --clean-import
  drush --root=$siteroot mi inc/menu-footer-people-menu.txt menu-footer-people-menu --clean-import
  # disable menu_import
  drush --root=$siteroot -y dis menu_import
  # set Menu Position default setting to 'Mark the rule's parent menu item as being "active".'
  drush --root=$siteroot  -y vset menu_position_active_link_display 'parent'
fi

# add WMD user (site owner)
drush --root=$siteroot waau $sunetid --name="$fullname"
# give WMD user "site owner" role
drush --root=$siteroot urol "site owner" "$sunetid@stanford.edu"
# map itservices:webservices to administrator role
drush --root=$siteroot wamr itservices:webservices administrator
# change user 1 email address
drush --root=$siteroot sqlq 'update users set mail="sws-developers@lists.stanford.edu" where uid=1'
# create a Howard user for testing and give him the "site owner" role
drush --root=$siteroot ucrt Howard --password="howard" --mail="sws-developers+howard@lists.stanford.edu"
drush --root=$siteroot urol "site owner" Howard
# create a Lindsey user for testing and give her the "editor" role
drush --root=$siteroot ucrt Lindsey --password="lindsey" --mail="sws-developers+lindsey@lists.stanford.edu"
drush --root=$siteroot urol "editor" Lindsey
# revert all of our features. yeah I want cheesy poofs!
drush --root=$siteroot fra --force -y
drush --root=$siteroot fr stanford_metatag_nobots -y
# Unset user menu as secondary links
drush --root=$siteroot vset menu_secondary_links_source "" -y
# Set pathologic base paths
drush --root=$siteroot php-script inc/pathologic.php
# Create Menu Position rules
drush --root=$siteroot php-script inc/menu-position-rules.php
# clear cache. rules. everything. around. me.
drush --root=$siteroot cc all

if $conf_is_local = true; then
  drush --root=$siteroot uli
fi
