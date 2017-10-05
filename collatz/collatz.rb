def collatz(n)
  next_num = 0
  length = 0

  while n != 1
    if n.even?
      puts "n \"#{n}\" is even, computing with n/2."
     
      next_num = n/2
      puts "Next Number is:  #{next_num}"

      # puts "Continuing to next in sequence."
      collatz(next_num) unless next_num == 1
      length = length + 1

      if n == 1
        puts "We are either starting at one or done, step count is #{length}."
      end

    else
      puts "n \"#{n}\" is odd, computing with 3n + 1."
      
      next_num = (3 * n ) + 1
      puts "Next Number is:  #{next_num}"
      
      # puts "Incrementing count to #{step_count} ."
      collatz(next_num) unless next_num == 1
      length = length + 1
      if n == 1
        puts "We are either starting at one or done, step count is #{length}."
      end
    end
  end
  puts "Length:  #{length}"
end

collatz(1000000)