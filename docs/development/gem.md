# Gem

## Install system dependencies

Install Ruby and Bundler for your user - see [gist](https://gist.github.com/MichaelCurrin/3af38fca4e2903cdedfb8402c18b2936).


## Setup the theme
> Install theme dependencies and build the theme gem

Note that this sets up dependencies for the theme so that it can be packaged as a gem. Continue to a later section on this page for starting a server.


### Clone

Clone the repo:

```sh
$ git clone git@github.com:MichaelCurrin/jekyll-theme-quickstart.git
$ cd jekyll-theme-quickstart
```

### Install project dependencies

Install gems using Bundler:

```sh
$ make install
```

This will not install the theme itself, just the dependencies in [Gemfile](/Gemfile):

- `gemspec`


### Build

If you use the Remote Theme plugin to load your theme on GH Pages, you can skip this section, as that only needs a `*.gemspec` file and not an

This build step will package your theme as a `*.gem` archive file, which can downloaded and installed from RubyGems or GitHub.

```sh
$ make build-gem
```
```
gem build jekyll-theme-quickstart.gemspec
  Successfully built RubyGem
  Name: jekyll-theme-quickstart
  Version: 0.3.0
  File: jekyll-theme-quickstart-0.3.0.gem
```

### Start dev server

Note:

- With no HTML or markdown pages, you'd normally just see a directory listing by default.
- A single demo page has been added for easy testing. This will not be included as a file installing the project into another project.
- You'll get warnings about no config and if you look at the `_site` directory you'll see some files you would not expect. This is okay as it does not affect local serving and it avoids adding a config to the project.

Test the theme using a demo file - [index.md](/index.md).

```sh
$ make serve
```

Open your browser at:

- [localhost:4000](http://localhost:4000)
