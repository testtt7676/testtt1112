# Ruby dependency confusion test Gemfile
source 'https://rubygems.org'
source 'https://gems.company-internal.com' do
  gem 'internal-company-gem', '~> 1.0'
end

ruby '3.1.0'

# Existing gems (should NOT be flagged)
gem 'rails', '~> 7.0.0'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false

# Non-existent gems (SHOULD be detected as vulnerable)
gem 'this-gem-does-not-exist-ruby-test', '~> 1.0.0'
gem 'fake-vulnerable-ruby-gem', '2.1.0'
gem 'nonexistent-rails-plugin-dc-test', '>= 1.0'
gem 'bogus-ruby-library-vulnerability-check', '~> 1.5'
gem 'invalid-rubygems-dependency-test'

# Testing different version constraints
gem 'vulnerable-gem-with-range', '>= 1.0', '< 2.0'
gem 'fake-gem-with-pessimistic-version', '~> 1.2.0'

# Group-specific dependencies
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]  # Existing
  gem 'rspec-rails', '~> 5.0'  # Existing
  gem 'fake-rspec-plugin-vulnerable', '~> 1.0'  # Non-existent
  gem 'nonexistent-dev-gem-ruby-test', '2.0.0'  # Non-existent
end

group :development do
  gem 'web-console', '>= 4.1.0'  # Existing
  gem 'listen', '~> 3.3'  # Existing
  gem 'fake-dev-tool-ruby-vulnerable', '~> 1.0'  # Non-existent
  gem 'bogus-development-gem-test'  # Non-existent
end

# Production group
group :production do
  gem 'pg', '~> 1.1'  # Existing
  gem 'vulnerable-production-gem-test', '~> 1.0'  # Non-existent
end

# GitHub gem sources for testing repo detection
gem 'nonexistent-github-gem', git: 'https://github.com/fake-user/nonexistent-ruby-repo.git'
gem 'vulnerable-git-gem-test', git: 'https://github.com/nonexistent-owner/vulnerable-gem-repo.git', tag: 'v1.0.0'

# Platform-specific gems
gem 'wdm', '>= 0.1.0', platforms: [:mingw, :mswin, :x64_mingw, :jruby]  # Existing
gem 'fake-platform-specific-gem', platforms: [:ruby]  # Non-existent