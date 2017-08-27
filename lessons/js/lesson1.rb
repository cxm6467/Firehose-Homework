def add_nums(num1, num2)
  num1 + num2
end

def subtract_nums(num1, num2)
  num1 - num2
end

add_numbers = lambda do | num1, num2 |
  num1 + num2
end

sub_nums = lambda do | num1, num2 |
  num1 - num2
end

puts "Add:  #{add_numbers.call(2,2)}"
puts "Subtract:  #{sub_nums.call(2,2)}"