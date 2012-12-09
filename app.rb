require 'rubygems'
require 'bundler'
Bundler.require
require 'sinatra'

# class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/square' do
    @ans = unique_paths_square(eval(params[:number])).to_s
    erb :answer
  end

  post '/rectangular' do
    @ans = unique_paths(eval(params[:x]),eval(params[:y])).to_s
    erb :answer
  end


  def factorial(n)
    if n == 0
      return 1
    else
      factorial(n - 1) * n
    end
  end

  def unique_paths(x,y) # works for grid of dimensions x, y 
    (factorial(x + y)) / (factorial(x) * factorial(y))
  end

  def unique_paths_square(side) 
    (factorial(side * 2)) / (factorial(side) ** 2)
  end

# end