#[Stanford Jumpstart Deployer](https://github.com/SU-SWS/stanford-jumpstart-deployer)
##### Version: 7.x-5.x

Maintainers: [jbickar](https://github.com/jbickar), [sherakama](https://github.com/sherakama)

This repository is used to build (drush make) Jumpstart Drupal websites.


Installation
---

You can use this resource with the build tool in order to make it easier for you. Download that tool on github at the [Stanford Geppetto](https://github.com/SU-SWS/stanford_geppetto/) project.

To use first select either a development or production style build, a product, and then an environment.

1. First you build the product.   
	```
	drush make development/product/jumpstart.make /Applications/MAMP/htdocs/jumpstart --working-copy --concurrency=4 -y
	```
2. Then you build the environment on top of the product build.   
	```
	drush make development/environment/mamp.make /Applications/MAMP/htdocs/jumpstart --no-core --working-copy --concurrency=4 -y
	```

Updating Version Numbers in Makefiles
---
Included in the root of this repository is a shell script, `sed-make.sh`. To update the version number of a module in all `*.make` files in this repo, use it like so:

```
./sed-make.sh <module> <oldversion> <newversion>
```
E.g.,:

```
./sed-make.sh block_class 1.3 2.3
```

Then review and commit the changes.

Troubleshooting
---

If you are experiencing issues with this module try reverting the feature first. If you are still experiencing issues try posting an issue on the GitHub issues page.

Contribution / Collaboration
---

You are welcome to contribute functionality, bug fixes, or documentation to this module. If you would like to suggest a fix or new functionality you may add a new issue to the GitHub issue queue or you may fork this repository and submit a pull request. For more help please see [GitHub's article on fork, branch, and pull requests](https://help.github.com/articles/using-pull-requests)