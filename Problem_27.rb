require 'prime'

def quadratic

  a_max = 0
  b_max = 0
  n_max = 0
  (-1000..1000).each do |a|
    (1..1000).each do |b|
      n = 0
      # check if the combination gives a prime number
     while (((n**2)+(a*n)+b).prime?)
       n += 1
     end
     # find the max possible combination
     if (n > n_max)
       n_max = n
       a_max = a
       b_max = b
     end
   end
 end
   return a_max * b_max , n_max
end
p quadratic
