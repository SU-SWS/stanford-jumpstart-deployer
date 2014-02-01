## Bash Files
-----------------------------------------

This 7.x-3.x-dev branch is for bleeding-edge development on Jumpstart and Jumpstart Academic

To start clone this repository and copy both deploy.conf.example to deploy.conf and provision.conf.example to provision.conf.

[this repo]/configuration/deploy.conf
[this repo]/configuration/provision.conf

Then simply run and follow the promts:
sh deploy.sh


## Drush Make Files
-----------------------------------------

There are two make files that do pretty much the same thing as the bash
deploy script. Please see /make for those files.

Developer Tip:
If you want to build a site with a make file and preserve the git repositories use --working-copy when building.

eg: drush make --working-copy jumpstart.make
