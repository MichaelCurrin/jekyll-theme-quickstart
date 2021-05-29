# Test the theme
> Setup and run a server for developing and testing the theme

This project has a GH Pages site on the `gh-pages` branch for testing the theme on the `master` branch. Follow these steps to get that setup locally.


## Clone

If is not safe to switch between branches in the same repo, the installed gems and the `.gitignore` files are different enough that conflicts will arise.

So it is safest to clone the repo under a different directory name and keep it under the `gh-page` branch.

Clone the repo:

```sh
$ git clone git@github.com:MichaelCurrin/jekyll-theme-quickstart.git jekyll-theme-quickstart-gh
$ cd jekyll-theme-quickstart-gh
$ git checkout gh-pages
$ git branch -D master
```


## Install project dependencies

Install gems using Bundler:

```sh
$ make install
```


## Start dev server

```sh
$ make serve
```

Open your browser at:

- [localhost:4000](http://localhost:4000/jekyll-quickstart-theme/)
