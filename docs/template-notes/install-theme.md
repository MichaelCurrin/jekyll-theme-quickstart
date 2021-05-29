# Install theme
> How to install any theme from RubyGems

_Note this is a general guide which you can keep and modify when creating a new project from this one. The theme `minima` is used here since `jekyll-theme-quickstart` is not published as so will not work. Note that on GH Pages that this approach only works with a limited set of supported themes - you have to use Remote Themes plugin to use another theme on GH Pages._

1. Add your `Gemfile`:
    ```ruby
    gem "minima"
    ```
2. Add to your `_config.yml`:
    ```yaml
    theme: minima
    ```
3. Install it:
    ```sh
    $ bundle install
    ```
4. Start your server.
