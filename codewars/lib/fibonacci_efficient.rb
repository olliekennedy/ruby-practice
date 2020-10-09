def fibonacci(n)
  return n if (0..1).include? n
  if !@fib_cache[n].nil?
    return @fib_cache[n]
  else
    @fib_cache[(n-1)] = fibonacci(n - 1)
    @fib_cache[(n-2)] = fibonacci(n - 2)
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

@fib_cache = {}

puts fibonacci(9360)
