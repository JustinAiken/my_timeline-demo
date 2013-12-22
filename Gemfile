source 'https://rubygems.org'

#Rails Base
gem 'rails', '3.2.15'
gem 'mysql2'
gem 'devise'
gem 'thin'

#My Timeline and My Timeline addons
gem 'my_timeline',              github: "JustinAiken/my_timeline"
gem 'my_timeline-health_graph', github: "JustinAiken/my_timeline-health_graph"
gem 'my_timeline-twitter'     , github: "JustinAiken/my_timeline-twitter"
gem 'my_timeline-github'      , github: "JustinAiken/my_timeline-github"

#Gems needed by My Timeline Addons
gem 'health_graph', git: 'git://github.com/jupp0r/health_graph.git'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
end

group :development do
  gem 'rails-erd'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'binding_of_caller'
end

gem 'jquery-rails'
