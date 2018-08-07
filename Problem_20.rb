def factorial (num)

  return 1 if num == 0
  fact = (1..num).reduce(1, :*)

end

def sum_of_digits

  num = factorial(100)
  num = num.to_s.chars.map{|x| x.to_i}
  num.inject(0, :+)

end

p sum_of_digits
