source 'https://rubygems.org'

group :jekyll_plugins do
  gem 'jekyll'
  gem 'jekyll-feed'
  gem 'jekyll-sitemap'
  gem 'jekyll-redirect-from'
  gem 'jemoji'
  gem 'webrick', '~> 1.8'
end

gem 'github-pages'
gem 'connection_pool', '2.5.0'

# Windows-only: timezone data for local Jekyll builds (ignored on Linux/CI)
# (Gem.win_platform? instead of `platforms: [:windows]`, which the older
# Bundler used by the GitHub Actions Ruby 3.0 build does not recognise.)
gem 'tzinfo-data' if Gem.win_platform?
