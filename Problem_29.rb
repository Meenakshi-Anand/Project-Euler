def distinct_powers
  power_array =[]

  (2..100).each do |n|
    (2..100).each do |i|
      #  find unique distinct powers between the range
      power_array << n**i unless power_array.include? n**i
    end
  end

power_array.length
end

p distinct_powers
