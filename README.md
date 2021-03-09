# Jekyll Theme Quickstart Demo
> Example of using Remote Theme plugin to install a theme on a GH Pages site


## View demo

<div align="center">

[![View demo](https://img.shields.io/badge/View-Demo_site-2ea44f?style=for-the-badge)](https://michaelcurrin.github.io/jekyll-theme-quickstart/)

</div>



## About

This is a demo site on the `gh-pages` branch. The content here is minimal - some configs and pages. All the layout files, includes files, assets, etc. are all handled by the configured theme.

This is setup in `Gemfile` and `_config.yml` with the chosen theme. In this case, the theme happens to be on the same repo but just on the [master](https://github.com/MichaelCurrin/jekyll-theme-quickstart/tree/master) branch. But typically, you would point it at theme you find on GitHub.


## Remote Theme

The GitHub Pages environment has a **locked** set of gems and versions, listed [here](https://pages.github.com/versions/). If you want to use a theme not supported on the list of 10 or so themes there, then you either need a custom build flow (like with GH Actions or Netlify). Or just use the Remote Theme plugin, with a couple of lines.

The Remote Theme plugin can actually get **any** Jekyll theme which is hosted as a GitHub repo. Whether it has a gemspec file at the root. This elegant as you can switch themes by changing values in your config and Gemfile only, without having to fork or copy the entire theme.

This demo uses the Remote Theme plugin approach as follows:

Note [\_config.yml](/_config.yml) enables the plugin and choose a theme:

```yaml
remote_theme: MichaelCurrin/jekyll-theme-quickstart

plugins:
  - jekyll-remote-theme
```

And the [Gemfile](/Gemfile) file installs the theme and plugin for local use. 

```ruby
gem "jekyll-theme-quickstart", git: "https://github.com/MichaelCurrin/jekyll-theme-quickstart"

group :jekyll_plugins do
  gem "jekyll-remote-theme", "~> 0.4.2"
end
```

The theme doesn't always _have_ to be installed locally like this, but does help you when you have a theme that has dependencies to be installed too.
