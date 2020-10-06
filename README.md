# Jekyll Theme Quickstart
> Scaffold for a basic Jekyll theme for use as a reference or template

[![Ruby - >=2.3](https://img.shields.io/badge/Ruby->=2.3-blue?logo=ruby&logoColor=white)](https://ruby-lang.org)
[![Jekyll - 3.9](https://img.shields.io/badge/Jekyll-3.9-blue?logo=jekyll&logoColor=white)](https://jekyllrb.com)
[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/jekyll-theme-quickstart)](https://github.com/MichaelCurrin/jekyll-theme-quickstart/tags/?include_prereleases&sort=semver)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue)](#license)


## How to use this project

<div align="center">

Create a new project from this template, or just use the code or docs as a reference.

[![Use this template](https://img.shields.io/badge/Use_this_template-2ea44f?style=for-the-badge&logo=github)](https://github.com/MichaelCurrin/jekyll-theme-quickstart/generate)

You can also view a live demo on GH Pages - this is served from the `gh-pages` branch and uses the Remote Theme plugin to load the theme from GitHub.

[![GH Pages - View demo](https://img.shields.io/badge/GH_Pages-View_demo-green?style=for-the-badge)](https://michaelcurrin.github.io/jekyll-theme-quickstart/)

</div>


## What is a Jekyll theme?

If you build a Jekyll site, you'll typically use a theme to style your site or at least give a base which you and customize on top of.

A theme is a way of packaging layout files, CSS styling and includes files to be installed in another Jekyll project. A theme might be made from scratch or based on a static HTML. A theme is a great way of making styling reusable across projects by you and other people.

A good example of a theme is Minima, which is the default theme used when runnign `jekyll new PATH`.

- GitHub: [jekyll/minima](https://github.com/jekyll/minima)

As in Minima, you can add gems to the theme to make the `Gemfile` of a site lighter.

### When to not use a theme

There is overhead to setting up and maintaining a theme as its own repo. So if you only plan to use the styling **once** for your own project and you also do not intend other to use your styling, then consider just making a plain Jekyll site which has layouts and CSS in it.

And it can still be setup as template for others to use or fork and allows customization. See for example this project which is not a theme but just a template project with page structure, styling and sample content.

- GitHub: [MichaelCurrin/artists-portfolio](https://github.com/MichaelCurrin/artists-portfolio)


## About

### Where this project comes from

The theme scaffold was generated with this command and Jekyll 4:

```sh
$ jekyll new-theme NAME
```

Note that is similar to the `jekyll new` command.

### Package a theme

The part that allows this project gem to be packaged as an installable gem-based theme is this file:

- [jekyll-theme-quickstart.gemspec](/jekyll-theme-quickstart.gemspec)

The other parts like the config and Gemfile or the layout and includes diretories are standard for a Jekyll project. The markdown pages in the root are included for a local demo and are not packaged in the theme.

Resources:

- [Creating a gem-based theme](https://jekyllrb.com/docs/themes/#creating-a-gem-based-theme) in Jekyll docs.
- [Publishing your theme](https://jekyllrb.com/docs/themes/#publishing-your-theme) in Jekyll docs.
- [Adding a theme to your GitHub Pages site using Jekyll](https://help.github.com/en/github/working-with-github-pages/adding-a-theme-to-your-github-pages-site-using-jekyll) guide on Github's help.


## Installation
>  Install this theme in your project

This project is hosted on Github since there is less friction without the signup and publish part.


### 1. Add to config

Update your project's `_config.yaml`:

```yaml
theme: jekyll-theme-quickstart
```

If using GitHub Pages, you can't use custom plugins and themes. But you can use the [remote theme](https://github.com/benbalter/jekyll-remote-theme) approach instead to load any theme.

```yaml
remote_theme: MichaelCurrin/jekyll-theme-quickstart

plugins:
  - jekyll-remote-theme
```

Optionally set a version at the remote theme value e.g. `@v1.0.0` or `@develop`.

### 2. Add to Gemfile

Update your project's `Gemfile`.

### GH Pages supported theme

Just to mention the standard flow for themes supported on GH:

```ruby
source 'https://rubygems.org'

gem 'minima', '~> 2.5.1'
```

###  Remote theme

If you want to run your own them on GH Pages, you need to use the Remote Theme plugin. This will download the theme for you both locally and on GH Pages, so you don't have to install your theme directly.

```ruby
source 'https://rubygems.org'

gem 'jekyll-remote-theme', '~> 0.4.2'
```

### Outside GH Pages

If running outside of GH Pages (like with GH Actions or Netlify), you can install like this without using Remote Theme plugin.

```ruby
source 'https://rubygems.org'

gem 'jekyll-theme-quickstart', git: 'https://github.com/MichaelCurrin/jekyll-theme-quickstart'
```


### 3. Install

Configure Bundler locally - only needed once.

```sh
$ bundle config set --local path vendor/bundle
```

Install project gems.

```sh
$ bundle install
```

### Installed path

#### GH Pages supported theme

Themes downloaded from RubyGems usually install here:

```
vendor/bundle/ruby/RUBY_VERSION/gems/THEME_NAME-THEME_VERSION
```

#### Remote theme

I don't know where the theme downloaded with Remote Theme gets installed - it might just be in memory when running the build step.

#### Outside GH Pages

If you added your theme to your Gemfile directly and installed from GitHub URL, it will get installed here:

```
vendor/bundle/ruby/RUBY_VERSION/bundler/gems/THEME_NAME-THEME_VERSION
```

Where the version at the end is a hash (`123456789abc`) or a tag number (`1.0.0`).



### Installed dependencies

See the [gemspec](jekyll-theme-quickstart.gemspec) file to see what dependencies get installed. This came with the scaffold. Update minimum Jekyll version.

_Note the scaffold was generated with Jekyll 4 and yet still required `3.8`, so this was adjusted to `4.0` to be consistently updated for reuse of this project, even though there is nothing specific in this simple theme that is Jekyll 4._


## Usage

_TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets._


## Development

See the [docs](/docs/) directory.


## Contributing

Bug reports and pull requests are welcome on GitHub at [github.com/MichaelCurrin/jekyll-theme-quickstart](https://github.com/MichaelCurrin/jekyll-theme-quickstart).

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

Released under [MIT](/LICENSE).

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
