# Install theme
> How to install a theme

1. Add your `Gemfile`:
    - Install from GitHub.
        ```ruby
        gem "jekyll-theme-quickstart", git: "https://github.com/MichaelCurrin/jekyll-theme-quickstart"
        ```
    - Install from RubyGems (will **not** work in this case).
        ```ruby
        gem "jekyll-theme-quickstart"
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
