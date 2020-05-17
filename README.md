# Jekyll Theme Quickstart
> Scaffold for a basic Jekyll theme for use as a reference or template


_Note that this will work on Github Pages. You need to use Jekyll Actions or Netlify - since this is not a theme included in the supported Github Pages dependency versions._


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

Set the theme name in `remote-theme` - leave out the `theme` field.

```yaml
# _config.yaml

remote-theme: jekyll-theme-quickstart

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

See the [gemspec](jekyll-theme-quickstart.gemspec) file to see what dependencies get installed - including Jekyll `3.8` or higher. This came with the scaffold.


## Usage

TODO: Write usage instructions here. Describe your available layouts, includes, sass and/or assets.


## Contributing

Bug reports and pull requests are welcome on GitHub at [github.com/MichaelCurrin/jekyll-theme-quickstart](https://github.com/MichaelCurrin/jekyll-theme-quickstart). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## Development

### Clone

Clone the repo.

### Install

Install Ruby and Bundler for your user as per [gist](https://gist.github.com/MichaelCurrin/3af38fca4e2903cdedfb8402c18b2936).

Configured Bundler.

```sh
$ bundle config --local path vendor/bundle
```

Install project dependencies.

```sh
$ bundle install
```

This will not install the theme itself, just dependencies in [Gemfile](/Gemfile).

- `gemspec`


### Start a server

Test the theme using a demo file - [index.md](/index.md).

```sh
$ bundle exec jekyll serve
```

_You'd normally just see a directory list by default, except a demo page has been added for easy testing. This will not be included as a file installing the project into another project._

Open your browser at:

- [localhost:4000](http://localhost:4000)

You'll get warnings about no config and if you look at the `_site` directory you'll see some files you would not expect. This is okay as it does not affect local serving and it avoids adding a config to the project.


### Customize

Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.


The scaffold started with three minimal layout files, which have since been updated, based partially on the Minima theme.

- `default.html`
    ```
    {{ content }}
    ```
- `page.html`
    ```
    ---
    layout: default
    ---

    {{ content }}
    ```
- `post.html`
    - Same as `page.html`.

The scaffold started off with an empty `_includes` directory, but some have been added.


### Releases

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.

To add a custom directory to your theme-gem, please edit the `regexp` in [jekyll-theme-quickstart.gemspec](/jekyll-theme-quickstart.gemspec) accordingly.

When tagging the repo, remember to update the tag number in that file too.


### Examples

See [jekyll/minima](https://github.com/jekyll/minima) on Github as an example of a simple theme.


### Gemspec note

Notes on how the fields work, for maintaining this project or forks.

See [Specification reference](https://guides.rubygems.org/specification-reference/) page on the RubyGems docs site.

From the original gemspec file:

```
  spec.summary       = "TODO: Write a short summary, because Rubygems requires one."
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
```

Bundle install will fail if these are not updated.


#### Ignore file note

This was added to `Gemfile` with the scaffold:

```
*.gem
```

While `vendor/` was not. So after adding the second, the first may not be needed.



## License

See [LICENSE](/LICENSE).

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
