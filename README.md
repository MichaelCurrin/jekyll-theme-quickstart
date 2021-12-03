# Jekyll Theme Quickstart Demo
> Example of using Remote Theme plugin to install a theme on a GH Pages site


## View demo

A link to a live site that uses Remote Theme plugin on GitHub Pages.

<div align="center">

[![View demo](https://img.shields.io/badge/View-Demo_site-2ea44f?style=for-the-badge)](https://michaelcurrin.github.io/jekyll-theme-quickstart/)

</div>

See below for a short tutorial on how this demo was setup so you can use the Remote Theme plugin too, whether for your own theme or a theme you found.


## About

This is a demo site on the `gh-pages` branch. The content here is minimal - some configs and a few pages. All the layout files, includes files, assets, etc. are all handled by the configured theme on the [master](https://github.com/MichaelCurrin/jekyll-theme-quickstart) branch. 

In this situation, the site and the theme are in the _same_ repo. 
But, typically, you would have your site content on your main branch and point the site at a _different_ GitHub repo which contains the theme, or the gem on RubyGems if the theme is published there.

If using GH Pages, you'll use Remote Theme plugin as below and point that at a repo name (the standard GH Pages environment limits you to a handful of themes unless you use Remote Theme plugin).

If you are _not_ using plain GitHub Pages to build but are using something like GitHub Actions or Netlify, you don't need to use Remote Theme plugin and can use the standard setup of `theme` set in your config and your theme gem in `Gemfile`.


## Remote Theme

The Remote Theme flow is setup here in `Gemfile` and `_config.yml`. Why is it needed? Well, the GitHub Pages environment has a **locked** set of gems and versions, listed [here](https://pages.github.com/versions/). If you want to use a theme that is not supported on the list of 10 or so themes there, then you either need a custom build flow (like with GH Actions or Netlify). Or use the Remote Theme plugin, with a couple of lines.

The Remote Theme plugin can load **any** Jekyll theme which is hosted as a public GitHub repo, if it has a gemspec file at the root. This is elegant as you can switch themes by changing values in your config and Gemfile only, without having to fork or copy the entire theme.

This demo uses the Remote Theme plugin approach as follows:

### Config 

Note [\_config.yml](/_config.yml) enables the plugin and choose a theme:

```yaml
remote_theme: MichaelCurrin/jekyll-theme-quickstart

plugins:
  - jekyll-remote-theme
```

### Gemfile 

The [Gemfile](/Gemfile) file installs the theme and plugin, for local use. GH Pages will ignore this file and does not need it to exist.

```ruby
gem "jekyll-theme-quickstart", git: "https://github.com/MichaelCurrin/jekyll-theme-quickstart"

group :jekyll_plugins do
  gem "jekyll-remote-theme", "~> 0.4.2"
end
```

The first line of that theme doesn't always _need_ to be there. But, it is a good idea. As it helps you when you have a theme that has dependencies to be installed too. So when you run `bundle install`, you get the theme's dependencies and won't get errors that they are missing when you start a dev server. A reminder that even when using the Remote Theme plugin, the gem dependencies of the chosen theme can still only be the dependencies on the GH Pages locked versions list.

This also assumes that all the plugins used by the theme are supported on GH Pages. If it uses custom plugins, then you need GH Actions or Netlify instead.
