def sum_of_squares(number)
  # sum of squares (1^2 +..+n^2)
  (1..number).collect {|num| num ** 2}.inject(0, :+)

end

def square_of_sum (number)
  # square of sum (1+..n)^2
  (1..number).inject(0, :+)**2

end

def difference(number)

  square_of_sum(number)-sum_of_squares(number)

end

print difference (100)
