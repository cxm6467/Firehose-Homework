require 'benchmark'

def recursive_fib
end

def iterative_fib
end




## Benchmark Tests
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end