# Development
> Setup and run locally

## Clone

Clone the repo.

## Install

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


## Start a server

Test the theme using a demo file - [index.md](/index.md).

```sh
$ bundle exec jekyll serve
```

_You'd normally just see a directory list by default, except a demo page has been added for easy testing. This will not be included as a file installing the project into another project._

Open your browser at:

- [localhost:4000](http://localhost:4000)

You'll get warnings about no config and if you look at the `_site` directory you'll see some files you would not expect. This is okay as it does not affect local serving and it avoids adding a config to the project.


## Build

```sh
$ gem build jekyll-theme-quickstart.gemspec
```
```
  Successfully built RubyGem
  Name: jekyll-theme-quickstart
  Version: 0.1.0
  File: jekyll-theme-quickstart-0.1.0.gem
```

This will create a binary file like:

```
jekyll-theme-quickstart-0.1.0.gem
```
