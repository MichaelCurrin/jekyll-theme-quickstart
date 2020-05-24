# Jekyll Theme Quickstart
> Scaffold for a basic Jekyll theme for use as a reference or template


_Note that this will work on Github Pages. You need to use Jekyll Actions or Netlify - since this is not a theme included in the supported Github Pages dependency versions._


## About

The theme scaffold was generated with this command and Jekyll 4:

```sh
$ jekyll new-theme NAME
```

## Resources

From Jekyll docs.

- [Creating a gem-based theme](https://jekyllrb.com/docs/themes/#creating-a-gem-based-theme).
- [Publishing your theme](https://jekyllrb.com/docs/themes/#publishing-your-theme)


## Installation
>  Install as a remote theme hosted on Github (not RubyGems)

See [Adding a theme to your GitHub Pages site using Jekyll](https://help.github.com/en/github/working-with-github-pages/adding-a-theme-to-your-github-pages-site-using-jekyll) doc.


### 1. Add to config

Set the theme name in `remote_theme`. Note you do not need to set the `theme` field.

Update your project's `_config.yaml`:

```yaml
plugins:
  - jekyll-remote-theme

remote_theme: MichaelCurrin/jekyll-theme-quickstart
```

You can also add a tag. e.g. `foo/bar@v1.0.0` or `foo/bar@develop`.

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
