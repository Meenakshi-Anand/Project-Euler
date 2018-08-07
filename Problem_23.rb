def factor_sum (number)
sum = 1
sqrt = Math.sqrt(number)
  (2..sqrt.floor).each do |i|
    if (number % i == 0)
      sum += number/i if i!= sqrt
      sum += i
    end
  end
  sum
end

def non_abundant_sums
  abundant_array = []
  abundant_array_sum = []
  non_abundant_sum = 0
  # find all the abundant sums
  (1..28123).each do |no|
    abundant_array << no  if factor_sum(no) > no
  end

  abundant_array.each do |x|
    abundant_array.each do |y|
      break if x+y > 28123
      abundant_array_sum << x+y
    end
  end
 #  remove the abundant sums to find the non abundant sums
 non_abundant_sum = (1..28123).to_a - abundant_array_sum
 non_abundant_sum.inject(0,:+)
end
print non_abundant_sums
