def is_prime?(number)
  is_prime = true
 # check if the number is divisible by any number in range if true return false
 (2..number).each do |no|
   return is_prime = false   if (number % no == 0 && number != no)
 end

 is_prime
end

def largest_prime_factor (number)
  largest_factor = 0
  #  check for the factors till sqrt of number .The factors after the end limit cannot be prime 
  (2..Math.sqrt(number)).each do |num|
    largest_factor = num  if (number % num == 0 && is_prime?(num) == true)
  end

  largest_factor
end

print largest_prime_factor(600851475143)
