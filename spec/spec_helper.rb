ENV['RACK_ENV'] = "test"

require 'rubygems'
require 'bundler'

Bundler.require(:default, :test)

require 'simplecov'
SimpleCov.start
require File.join(File.dirname(__FILE__), '../app')
require 'rspec'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false


module MyTestMethods
  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include MyTestMethods
end