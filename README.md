# Jekyll Theme Quickstart
> Scaffold for a basic Jekyll theme for use as a reference or template


_Note this used Jekyll 4 so will not work on Github Pages - you need to use Jekyll Actions or Netlify_.


## About


The theme scaffold was generated with this command and Jekyll 4:

```sh
jekyll new-theme NAME
```


## Installation


### Install as theme

_Note: This is theme is not published to RubyGems so these commands will not work - skip to [Install as remote theme](#install-as-remote-theme).

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "jekyll-theme-quickstart"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: jekyll-theme-quickstart
```

And then execute:

```sh
$ bundle install
```

Or install it yourself as:

```sh
$ bundle install jekyll-theme-quickstart
```


### Install as remote theme

See [Adding a theme to your GitHub Pages site using Jekyll](https://help.github.com/en/github/working-with-github-pages/adding-a-theme-to-your-github-pages-site-using-jekyll) doc.


#### 1. Add to config

```yaml
# _config.yaml

theme: jekyll-theme-quickstart

plugins:
  - jekyll-remote-theme
```

#### 2. Add to Gemfile

From [How to install gems from git repositories](https://bundler.io/guides/git.html) doc.

>  Specify that a gem should come from a git repository with a .gemspec at its root
>
> `gem 'rack', git: 'https://github.com/rack/rack'`

```ruby
# Gemfile

gem 'jekyll-theme-quickstart', git: 'https://github.com/MichaelCurrin/jekyll-theme-quickstart'

group :jekyll_plugins do
    gem 'jekyll-remote-theme'
end
```

#### 3. Install

Configure Bundler locally for the project once.

```sh
$ bundle config --local path vendor/bundle
```

Install gems.

```sh
$ bundle install
```


## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.


## Contributing

Bug reports and pull requests are welcome on GitHub at [github.com/MichaelCurrin/jekyll-theme-quickstart](https://github.com/MichaelCurrin/jekyll-theme-quickstart). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## Development

To set up your environment to develop this theme, run `bundle install`.

Your theme is setup just like a normal Jekyll site! To test your theme, run `bundle exec jekyll serve` and open your browser at `http://localhost:4000`. This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.

To add a custom directory to your theme-gem, please edit the regexp in `jekyll-theme-quickstart.gemspec` accordingly.


## License

See [LICENSE](/LICENSE).

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
