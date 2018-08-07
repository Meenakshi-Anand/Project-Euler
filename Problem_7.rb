def nth_prime (number)
  primes = [2]
  prime_number = 0
  raise ArgumentError if number<1

  prime_number = primes.last 
  while (primes.length < number)
    prime_number += 1
    # check for the next prime number
    unless (primes.any? {|num| prime_number % num == 0 })
      primes.push(prime_number)
    end

  end
  primes.last
  end

print nth_prime (10001)
