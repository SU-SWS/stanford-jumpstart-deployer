## Drush Make Files
-----------------------------------------

In the make directory there are 2 other directories. In the development folder you will find a deployer that 
points to all development versions of everything. In the production folder you will find the latest tagged 
release of each product. 

Developer Tip:
If you want to build a site with a make file and preserve the git repositories use --working-copy when building.

eg: drush make jumpstart.make /path-to-webserver/site-name --working-copy 
