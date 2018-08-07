def triangle_factors
  count = 0
  number = 1
  triangle = 0

  while(count < 500)
    triangle += number
    number += 1
    count = 0
    # find the number of divisors 
    (2..Math.sqrt(triangle).floor).each do |no|
      count += 2  if (triangle % no == 0)
    end

  end
triangle
end

print triangle_factors
