# Notes

Explanatory dev notes to myself around where the pieces from and how they work.


## Docs

For a full theme, include a screenshot in `README.md`.


## Install path

For some reason, the theme gets installed here:

```
vendor/bundle/ruby/2.6.0/bundler/gems/
```

Rather than:

```
vendor/bundle/ruby/2.6.0/gems/
```

This might be because I installed from a Github repo rather than a published `.gem` file on RubyGems.

The project still serves though.


## Customize

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


## Releases

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.

To add a custom directory to your theme-gem, please edit the `regexp` in [jekyll-theme-quickstart.gemspec](/jekyll-theme-quickstart.gemspec) accordingly.

When tagging the repo, remember to update the tag number in that file too.


## Examples

See [jekyll/minima](https://github.com/jekyll/minima) on Github as an example of a simple theme.


## Gemspec note

Notes on how the fields work, for maintaining this project or forks.

See [Specification reference](https://guides.rubygems.org/specification-reference/) page on the RubyGems docs site.

From the original gemspec file:

```
  spec.summary       = "TODO: Write a short summary, because Rubygems requires one."
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
```

Bundle install will fail if these are not updated.

This was added based on Minima:

```
  spec.metadata["plugin_type"] = "theme"
```

### Git ignore file note

This was added to `Gemfile` with the scaffold:

```
*.gem
```

This is useful when building a theme before publishing.
