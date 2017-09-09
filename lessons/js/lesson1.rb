add_nums = lambda do | num1, num2 |
  num1 + num2
end

sub_nums = lambda do | num1, num2 |
  num1 - num2
end

def combine (m, num1, num2)
  m.call(num1,num2)
end

puts combine(add_nums, 2,3)