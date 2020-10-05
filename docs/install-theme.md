# Install as theme
> How to install a theme published on RubyGems

_Note: This is theme is not published to RubyGems so these commands will not work. This is here for completeness as a reference. See the approach in [README.md](README.md#installation)_


1. Add your `Gemfile`:
    ```ruby
    gem "jekyll-theme-quickstart", git: "https://github.com/MichaelCurrin/jekyll-theme-quickstart"
    ```
2. Add to your `_config.yml`:
    ```yaml
    theme: jekyll-theme-quickstart
    ```
3. Install it:
    ```sh
    $ bundle install
    ```
4. Start your server.
