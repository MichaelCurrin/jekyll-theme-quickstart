install:
	bundle config set --local path vendor/bundle
	bundle install

s serve:
	bundle exec jekyll serve --livereload  --trace

build:
	gem build jekyll-theme-quickstart.gemspec
