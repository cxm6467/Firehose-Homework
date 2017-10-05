@cache = {}
## If I've enocuntered this number get it from the cache { name, value }
## If key/value exists, grab it from cache, if not add it


def collatz(n,length=0)
  return length + 1 if n == 1 
  next_num = 0

  # while n != 1
    if n.even?
      # puts "n \"#{n}\" is even, computing with n/2."
      next_num = n/2
      # puts "Next Number is:  #{next_num}"
      # puts "Continuing to next in sequence."
      collatz(next_num,length + 1)
    else
      # puts "n \"#{n}\" is odd, computing with 3n + 1."
      next_num = (3 * n ) + 1
      # puts "Next Number is:  #{next_num}"
      # puts "Incrementing count to #{length} ."
      collatz(next_num, length + 1)
    end
  # end
end

largest_collatz = 0
number_with_longest_collatz = 0

(1..1_000_000).each do |i|
  current_collatz = collatz(i)

  if current_collatz > largest_collatz
    largest_collatz = current_collatz 
    number_with_longest_collatz = i 
  end

end

puts number_with_longest_collatz

# puts collatz(1)
# puts collatz(2)
# puts collatz(3)
# puts collatz(4)
# puts collatz(5)
# puts collatz(6)
# puts collatz(7)
# puts collatz(1_000_000)

## Cache/Benchmark of cache no cache