def prime(x)

if ( x == 1 )
  return false
end
#  check if the number is prime
maxN = Math.sqrt(x).floor
  2.upto(maxN) do |i|
    return false if ( x % i == 0 )
  end
return true
end

def sum_of_primes
sum = 2+3+5+7
primes = [2]

(10..2000000).each do |i|
# if number is prime add to sum
  if prime(i)
    primes.push(i)
    sum += i
  end

end
sum
end
 
print sum_of_primes
