# Jekyll Theme Quickstart Demo
> Demonstrate building a custom theme on GitHub Pages

This is a demo site on the [gh-pages](https://github.com/MichaelCurrin/jekyll-theme-quickstart/tree/gh-pages) branch.

The content here is minimal - some configs and pages. All the layout files, includes files, assets, etc. are all handled by the configured theme.


## View demo

<div align="center">

[![View demo](https://img.shields.io/badge/View-Demo_site-2ea44f?style=for-the-badge)](https://michaelcurrin.github.io/jekyll-theme-quickstart/)

</div>


## Remote Theme

The GitHub Pages environment has a fixed set of gems and versions, listed [here](https://pages.github.com/versions/). If you want to use a theme not supported on the list of 10 or so themes there, then you either need a custom build flow (like with GH Actions or Netlify). Or just use the Remote Theme plugin with a couple of lines.

This demo uses the Remote Theme plugin. This is setup in `Gemfile` and `_config.yml` with the chosen theme. In this case, the theme happens to be on the same repo but just on the [master](https://github.com/MichaelCurrin/jekyll-theme-quickstart/tree/master) branch. But typicall, you would point it at theme you find on GitHub.

The Remote Theme plugin can get **any** Jekyll theme which is hosted as a GitHub repo. Whether it has a gemspec file at the root. This elegant as you can switch themes by changing values in your config and Gemfile only, without having to fork or copy the entire theme.
