def factorial(n)
  if n == 0
    return 1
  else
    factorial(n - 1) * n
  end
end

def unique_paths_square(side)
  (factorial(side * 2)) / (factorial(side) ** 2)
end

def unique_paths(x,y) # works for grid of dimensions x, y 
  (factorial(x + y)) / (factorial(x) * factorial(y))
end