# Jekyll Theme Quickstart
> Scaffold for a basic Jekyll theme for use as a reference or template


_Note that this will work on Github Pages. You need to use Jekyll Actions or Netlify - since this is not a theme included in the supported Github Pages dependency versions._


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

In order to install it, make sure to include the remote-themes as covered below.

- [benbalter/jekyll-remote-theme](https://github.com/benbalter/jekyll-remote-theme)
  > Jekyll plugin for building Jekyll sites with any public GitHub-hosted theme


### 1. Add to config

Update your project's `_config.yaml`:

```yaml
plugins:
  - jekyll-remote-theme

remote_theme: MichaelCurrin/jekyll-theme-quickstart
```

Notes:

- Note the underscore in `remote_theme` - the install/serve will fail quietly if there is a dash.
- You can also add a tag in the theme. e.g. `foo/bar@v1.0.0` or `foo/bar@develop`.
- You do _not_ need to set the `theme` field. However, that might be better option if it works - since remote theme plugin runs on _every_ build which is not nice for large themes.


### 2. Add to Gemfile

Update your project's `Gemfile`.

```ruby
source 'https://rubygems.org'

gem 'jekyll-theme-quickstart', git: 'https://github.com/MichaelCurrin/jekyll-theme-quickstart'

group :jekyll_plugins do
  gem 'jekyll-remote-theme'
end
```

Based on [How to install gems from git repositories](https://bundler.io/guides/git.html) doc.

>  Specify that a gem should come from a git repository with a .gemspec at its root
>
> `gem 'rack', git: 'https://github.com/rack/rack'`


### 3. Install

Configure Bundler locally - only needed once.

```sh
$ bundle config --local path vendor/bundle
```

Install gems.

```sh
$ bundle install
```

See the [gemspec](jekyll-theme-quickstart.gemspec) file to see what dependencies get installed. This came with the scaffold. 

Note the scaffold was generated with Jekyll 4 and still required `3.8`, so this was adjusted to `4.0` to be consistently updated for reuse of this project, even though there is nothing specific in this simple theme that is Jekyll 4 specific.


## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.


## Development

See the [docs](/docs/) directory.


## Contributing

Bug reports and pull requests are welcome on GitHub at [github.com/MichaelCurrin/jekyll-theme-quickstart](https://github.com/MichaelCurrin/jekyll-theme-quickstart).

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

See [LICENSE](/LICENSE).

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
