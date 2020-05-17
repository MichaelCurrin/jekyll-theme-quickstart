# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-quickstart"
  spec.version       = "0.2.0"
  spec.authors       = ["Michael Currin"]
  spec.email         = ["foo@bar.com"]

  spec.summary       = "Scaffold for a basic Jekyll theme for use as a reference or template"
  spec.homepage      = "https://github.com/MichaelCurrin/jekyll-theme-quickstart"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
