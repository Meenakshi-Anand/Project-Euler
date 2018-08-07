def factorial (num)

  return 1 if num==0
  fact = (1..num).reduce(1, :*)

end

def lexographic_permutations
  numbers = "0123456789"
  result = ""
  nth = 999999
  n = 0
  f = 1

  (0..9).each do |i|
    #  find the number i each position using factorial assistance 
    f = factorial( 9-i )
    n = nth/f
    result += numbers[n]
    nth -= n*f
    numbers = numbers.delete(numbers[n])
  end

result
end

print lexographic_permutations
