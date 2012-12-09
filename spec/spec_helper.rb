require 'simplecov'
SimpleCov.start

require File.join(File.dirname(__FILE__), '..', './app')

require 'rubygems'
require 'bundler'
require 'rspec'
require 'rack/test'

Bundler.require(:default, :test)


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