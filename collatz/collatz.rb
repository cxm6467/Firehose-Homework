@cache = { 1 => 1 }

def collatz(n, length = 0)
  return @cache[n] + length if @cache.key?(n)
  # return length + 1 if n == 1
  next_num = 0
  length_of_n = 0
  if n.even?
    next_num = n / 2
    length_of_n = collatz(next_num, length + 1)
  else
    next_num = (3 * n) + 1
    length_of_n = collatz(next_num, length + 1)
  end
  @cache[n] ||= @cache[next_num] + 1
  length_of_n
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
# puts @cache.inspect
# puts collatz(1)
# puts collatz(2)
# puts collatz(3)
# puts collatz(4)
# puts collatz(5)
# puts collatz(6)
# puts collatz(7)
# puts collatz(1_000_000)
