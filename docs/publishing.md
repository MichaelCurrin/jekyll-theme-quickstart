# Publishing
> A guide to publishing a theme, if you are maintaining this theme

If you need to publish your theme to RubyGems, follow these instructions as per Jekyll docs. Otherwise, you can ignore this seciton and just ignore from a Github URL.


## Increment version

Update the release number in the `.gemspec` file.


## Build

```sh
$ gem build jekyll-theme-quickstart.gemspec
```
```
  Successfully built RubyGem
  Name: jekyll-theme-quickstart
  Version: 0.1.0
  File: jekyll-theme-quickstart-0.1.0.gem
```

Note the package `.gem` file added in the root.

```
jekyll-theme-quickstart-0.1.0.gem
```

This is excluded from version control. 

Unfortunately this is zipped file so it is not so readable directly.


## Push

Push to publish on RubyGems. Requires an account and credentials.

```sh
$ gem push jekyll-theme-quickstart-*.gem
```
