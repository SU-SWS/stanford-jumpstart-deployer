#!/bin/bash
# Trys to create and add the database configuration to settings.php

#Check for settings.php file
# if [ ! -f $siteroot"/sites/$conf_drupal_sites_folder/settings.php" ] && $conf_is_local; then

#   cp $siteroot"/sites/$conf_drupal_sites_folder/default.settings.php" $siteroot"/sites/$conf_drupal_sites_folder/settings.php"

#   if [ "$conf_mysql_db_name" = "use sitename" ]; then
#     conf_mysql_db_name="$provision_name"
#   fi

# dbsettings="\$databases = array (
#   'default' =>
#   array (
#     'default' =>
#     array (
#       'database' => '$conf_mysql_db_name',
#       'username' => '$conf_mysql_user',
#       'password' => '$conf_mysql_pass',
#       'host' => '$conf_mysql_server',
#       'port' => '',
#       'driver' => 'mysql',
#       'prefix' => '',
#     ),
#   ),
# );"

#   echo "\n $dbsettings" >> $siteroot"/sites/$conf_drupal_sites_folder/settings.php"
#   drush si standard -y

# fi
