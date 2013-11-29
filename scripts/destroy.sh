#!/bin/bash
# This script completely reset a site to its default Stanford Sites configuration
# Run this from publish1 or publish2
# Be very, very careful

echo Enter site shortname \(e.g., \"jumpstart-foo\" for sites.stanford.edu/jumpstart-foo\)
read shortname

# set drush site root
siteroot=/var/www/ds_$shortname/public_html

# The $ here allows you to split the message over multiple lines
# See http://stackoverflow.com/questions/4296108/how-do-i-add-a-line-break-for-read-command
read -p 'You are about to completely reset the site at https://sites.stanford.edu/'"$shortname"$'. Be very, very careful.\nHit the Enter key to continue...'
read -p $'\nSeriously, I want you to think about what you\'re doing.\nHit the Enter key to continue, or Ctrl-C to cancel...'

# Baby, what time is it?
timestamp=$(date +%Y%m%d%H%M%S)

# Make a backup
drush arb --root=$siteroot --destination=/afs/ir/group/webservices/backups/$shortname-$timestamp.tar.gz

# Delete custom modules, themes, and files
rm -fr $siteroot/sites/default/modules/*
rm -fr $siteroot/sites/default/themes/*
rm -fr $siteroot/sites/default/files/*

# Drop the database
drush --root=$siteroot -y sql-drop

# Reinstall the site
remctl publish1 drupal drush-reinstall ds_$shortname

echo Done. I hope you\'re happy.