def pythagorean_triplet
num_1 = 1
num_2 = 1
num_3 = 1

while (num_1 < 1000)

  (1..1000).each do |num|
    # checking the possible combination
    num_3 = num_1**2 +num**2
    # checking if the number is a perfect square
    if ( Math.sqrt(num_3) % 1 == 0)
      num_2 = num
      num_3 = Math.sqrt(num_3)
      # return product of the numbers if sum of the numbers is 1000
      return num_1*num_2*num_3 if num_1+num_2+num_3==1000
    end

  end
  num_1 += 1
end

end

print pythagorean_triplet
