# Installation
> Install this theme in your project

Two approaches are covered for installing the theme. The Remote Theme approach is necessary for plain GH Pages setup, while the second approach needs some kind of CI like GitHub Actions or Netlify. Both require only a few lines of code.


## GH Pages Remote Theme flow

Only a few standard themes are available on the locked GH Pages environment. So you must use this Remote Theme plugin to fetch your custom theme.

### 1. Add to the config

Use the [remote theme](https://github.com/benbalter/jekyll-remote-theme) approach to load a theme using GitHub details.

- `_config.yml`
    ```yaml
    remote_theme: MichaelCurrin/jekyll-theme-quickstart
    ```

Optionally set a version at the `remote_theme` value e.g. `@v1.0.0` or `@develop`.

### 2. Add to Gemfile

Update your project's `Gemfile`.

- `Gemfile`
    ```ruby
    source "https://rubygems.org"

    gem "jekyll', '~> 3.9"
    gem "kramdown-parser-gfm", "~> 1.1.0"

    gem "jekyll-theme-quickstart", git: "https://github.com/MichaelCurrin/jekyll-theme-quickstart"

    group :jekyll_plugin do
      gem "jekyll-remote-theme", "~> 0.4.3"
    end
    ```

#### Notes

- I recommend adding the `jekyll` part to lock to a certain version - especially if the theme allows 3 and 4 and so would upgrade you to 4.
- By adding the theme to your Gemfile, you install the theme and its dependencies - if you don't do this you will likely get errors on a local build. When the build is run, the remote theme plugin is used to get the theme, so the locally installed theme is not actually used, but its dependencies are.
- By using a _group_ as above, the plugin will be enabled for you so you do not have to add it to `plugins` in your config.

Continue to [Install project gems](#install-project-gems)


## Custom CI flow

While gems are locked on GH Pages, you can install custom gems like a theme if you use a CI flow. Such as with GH Actions or Netlify.

### 1. Add to your config

Update your project's `_config.yaml`:

```yaml
theme: jekyll-theme-quickstart
```

### 2. Add to Gemfile

_TODO Update your version of this file on your new repo, using just **one** of the two approaches. Note the RubyGems approach needs sign-up and publishing on RubyGems site while the GitHub approach only needs a public repo to exist._

To install from RubyGems:

- `Gemfile`
    ```ruby
    source "https://rubygems.org"

    gem "jekyll-theme-quickstart", "~> 1.0.0"
    ```

To install from GitHub:

- `Gemfile`
    ```ruby
    source "https://rubygems.org"

    gem "jekyll-theme-quickstart", git: "https://github.com/MichaelCurrin/jekyll-theme-quickstart"
    ```


## Install project gems locally

Now install your gems locally. This is also needed on GH Actions. Netlify takes care of gems for you though.

Configure Bundler locally - only needed once.

```sh
$ bundle config set --local path vendor/bundle
```

Install project gems.

```sh
$ bundle install
```


## Installed path

Useful info for understanding where your theme gets installed based on the approach.

### GH Pages supported theme

Themes downloaded from RubyGems usually install here:

- `vendor/bundle/ruby/RUBY_VERSION/gems/THEME_NAME-THEME_VERSION`

### GH Pages Remote Theme flow

The Remote Theme plugin stores the theme in memory and not on disk with gems.

### Custom CI flow

If you added your theme to your Gemfile directly and installed from GitHub URL, it will get installed here:

```
vendor/bundle/ruby/RUBY_VERSION/bundler/gems/THEME_NAME-THEME_VERSION
```

Where the version at the end is a hash (`123456789abc`) or a tag number (`1.0.0`).


## Installed dependencies

See the [gemspec](/jekyll-theme-quickstart.gemspec) file to see what dependencies get installed. This came with the scaffold. Update minimum Jekyll version.
