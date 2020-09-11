# Jekyll Theme Quickstart
> Scaffold for a basic Jekyll theme for use as a reference or template

<!--

_Note that this will **not** work on GitHub Pages as is. You need to use Jekyll Actions or Netlify for your deploy - since this is not a theme included in the supported GitHub Pages dependency versions. But... if you use the remote-theme plugin then you can use Jekyll theme on GH pages_

-->

## About


### Where this comes from

The theme scaffold was generated with this command and Jekyll 4:

```sh
$ jekyll new-theme NAME
```

Note that is different from `new` command.

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


### 2. Add to Gemfile

Update your project's `Gemfile`.

```ruby
source 'https://rubygems.org'

gem 'jekyll-theme-quickstart', git: 'https://github.com/MichaelCurrin/jekyll-theme-quickstart'
```

If using remote theme, add this:

```ruby
gem 'jekyll-remote-theme'
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

Note that the theme will get installed to:

```
vendor/bundle/ruby/RUBY_VERSION/bundler/gems/THEME_NAME-THEME_VERSION
```

Where the version at the end is a hash (`123456789abc`) or a tag number (`1.0.0`).

Themes installed from RubyGems usually install here:

```
vendor/bundle/ruby/RUBY_VERSION/gems/THEME_NAME-THEME_VERSION
```

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
