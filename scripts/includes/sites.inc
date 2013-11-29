#!/bin/bash
#Install sites environment specific features

function install_sites_links {
  remctl publish1 drupal promote ds_$shortname
  remctl publish1 drupal fix-permissions ds_$shortname
  remctl publish2 drupal fix-permissions ds_$shortname
}
