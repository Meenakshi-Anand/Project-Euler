def sum_of_even_fibonacci (number)
f1 = 1
f2 = 2
f3 = 0
sum = 2
# while last fibonacci is less than limit
while f3 < number
  # find the next fibonacci and add to sum 
  f3 = f1 + f2
  sum = sum + f3 if (f3 % 2 == 0)
  # swap the positions
  f1 = f2
  f2 = f3
end

sum
end

print sum_of_even_fibonacci(4000000)
