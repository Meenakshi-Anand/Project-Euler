def digit_fifth_power
max = (9**5)*5
sum = 0
# sum of 5th power of ther digits
(10..max).each do |i|
  sum_of_digit_powers = i.to_s.chars
  sum_of_digit_powers =sum_of_digit_powers.map{|n| n.to_i**5}.inject(0, :+)
  sum += i if sum_of_digit_powers == i
end

sum
end
print digit_fifth_power
