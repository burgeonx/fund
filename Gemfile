source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'activeadmin', '~> 1.0.0.pre4'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'figaro', '~> 1.1', '>= 1.1.1'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pundit', '~> 2.0'
gem 'rails', '~> 5.0.7'
gem 'sass-rails', '~> 5.0'
gem 'twilio-ruby', '~> 5.10', '>= 5.10.3'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'puma', '~> 3.0'
  gem 'sqlite3'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]