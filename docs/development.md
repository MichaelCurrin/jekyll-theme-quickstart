# Development
> Setup and run a server for developing and testing the theme

<!-- TODO Figure out how to use Jekyll in the project, without making it install directly as a gem when the installing theme. -->


## Install system dependencies

Install Ruby and Bundler for your user - see [gist](https://gist.github.com/MichaelCurrin/3af38fca4e2903cdedfb8402c18b2936).


## Clone

Clone the repo:

```sh
$ git clone git@github.com:MichaelCurrin/jekyll-theme-quickstart.git
$ cd jekyll-theme-quickstart
```


## Install project dependencies

Install gems using Bundler:

```sh
$ make install
```

This will not install the theme itself, just the dependencies in [Gemfile](/Gemfile):

- `gemspec`


## Start a server

Test the theme using a demo file - [index.md](/index.md).

```sh
$ make serve
```

_You'd normally just see a directory list by default, except a demo page has been added for easy testing. This will not be included as a file installing the project into another project._

Open your browser at:

- [localhost:4000](http://localhost:4000)

You'll get warnings about no config and if you look at the `_site` directory you'll see some files you would not expect. This is okay as it does not affect local serving and it avoids adding a config to the project.
