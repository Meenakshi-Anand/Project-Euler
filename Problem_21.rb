def sum_of_factors(number)
  sum = 1

  (2..Math.sqrt(number).floor).each do |i|
    if (number % i == 0)
    sum += i
    sum += number/i
    end
  end

sum
end

def amicable_numbers
  sum_factors = 0
  sum_array=[]
   (1..10000).each do |num|
     sum_factors = sum_of_factors(num)
     # check for amblicable numbers
      if (sum_of_factors(sum_factors) == num && sum_factors!=num)
        # populate in an array
        unless (sum_array.include? num)
          sum_array << num
          sum_array << sum_factors
        end

      end
    end
    # array sum 
   sum_array.inject(0, :+)
 end
print amicable_numbers
