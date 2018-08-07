def power_digit_sum
  # sum of digits of 2 power 1000
   number = 2**1000
   number_array=number.to_s.chars.map{|i| i.to_i}
   number_array.inject(0,:+)

end
print power_digit_sum
