# Development
> Setup and run a dev server that uses the theme

_TODO Figure out how to use Jekyll in the project, without making it install directly as a gem when the installing theme._


## Clone

Clone the repo.


## Install

Install Ruby and Bundler for your user as per [gist](https://gist.github.com/MichaelCurrin/3af38fca4e2903cdedfb8402c18b2936).

Configured Bundler.

```sh
$ bundle config ser --local path vendor/bundle
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
