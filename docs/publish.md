# Publish
> A guide to publishing a theme, if you are maintaining this theme

If you need to publish your theme to RubyGems, follow these instructions as per Jekyll docs. Otherwise, you can ignore this section and just ignore from a Github URL.


## 1. Increment version

Update the release number in the `.gemspec` file.


## 2. Build

```sh
$ make build-gem
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

This binary archive is excluded from version control.


## 3. Push

Publish to RubyGems. This requires an account and credentials setup.

```sh
$ gem push jekyll-theme-quickstart-*.gem
```
