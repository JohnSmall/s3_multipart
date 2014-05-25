require 'rubygems'
require 'bundler'

Bundler.require :development

require 'capybara/rspec'

Combustion.initialize! 

require 'rspec/rails'
require 'capybara/rails'

# Engine config initializer
require 'setup_credentials.rb'
require 'webmock/rspec'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'vcr_cassettes'
  c.hook_into :webmock
end
RSpec.configure do |config|
  #config.use_transactional_fixtures = true
end
