def sum_of_multiples (number)
  sum = 0
# finds the sum of multiples of 3 or 5
  (0...number).each do |num|
    sum = sum + num if (num % 3 == 0 || num % 5 == 0)
  end

  sum
end

print sum_of_multiples(1000)
