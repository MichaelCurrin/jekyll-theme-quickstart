# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "jekyll-theme-quickstart"
  spec.version = "0.2.0"
  spec.authors = ["Michael Currin"]
  spec.email = ["foo@bar.com"]

  spec.summary = "Scaffold for a basic Jekyll theme for use as a reference or template"
  spec.homepage = "https://github.com/MichaelCurrin/jekyll-theme-quickstart"
  spec.license = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"

  spec.required_ruby_version = ">= 2.3.0"
end
