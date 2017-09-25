

def recursive_fib(n)
   if n == 1 || n == 2 
    return 1
  else
    recursive_fib(n-1)+recursive_fib(n-2)
  end
end

def iterative_fib(n)
  if n == 1 || n == 2 
    return 1
  else
    previous_value = 0
    current_value = 1

    n.times do
      interim = previous_value
      previous_value = current_value
      current_value = interim + current_value
    end
    return previous_value
  end
end

#  iterative_fib(10)
# puts "Iterative:  #{iterative_fib(10)}"
# puts "Recursive:  #{recursive_fib(10)}"

require 'benchmark'

## Benchmark Tests
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib")  { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num) }
end