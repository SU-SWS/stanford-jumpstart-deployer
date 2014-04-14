## Drush Make Files
-----------------------------------------

Use Drush Make to set up your site instance. The 'development' versions use the latest versions of git branches for stanford and custom modules. 
New and updated contributed modules will be identified by commit hash so that they do not change in the development version without manual process.
The production versions of the make files will only point to very specific tags for each product. 

Developer Tip:
If you want to build a site with a make file and preserve the git repositories use --working-copy when building.

eg: drush make jumpstart.make /path-to-site/site-name --working-copy


