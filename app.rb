#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'
Bundler.require
require 'sinatra'
require './lib/unique_paths'

class App# < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/square' do
    @ans = unique_paths_square(eval(params[:number]))
    erb :answer
  end

  post '/rectangle' do
    @ans = unique_paths(eval(params[:x]), eval(params[:y]))
    erb :answer
  end
  
end