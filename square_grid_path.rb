require 'rubygems'
require 'sinatra'


get '/' do
  erb :index
end

post '/square' do
  ans = unique_paths_square_grid(eval(params[:number]))
  'Number of unique paths: ' + ans.to_s
end

post '/rectangular' do
  ans = unique_paths(eval(params[:x]),eval(params[:y])).to_s
  'Number of unique paths: ' + ans
end



def factorial_recursive(n)
  if n == 0
    return 1
  else
    factorial_recursive(n-1) * n
  end
end


def unique_paths(x,y) # works for grid of dimensions x, y 
  (factorial_recursive(x + y)) / (factorial_recursive(x) * factorial_recursive(y))
end


def unique_paths_square_grid(side) 
  (factorial_recursive(side * 2)) / (factorial_recursive(side) ** 2)
end
