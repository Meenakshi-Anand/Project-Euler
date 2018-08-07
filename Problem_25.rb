def fibonacci_number_series
  fibonacci = [1,1,2,3,5,8,13,21,34,55,89,144]
  # populate the fibonacci series to find the 1000th term
  while (fibonacci.last.to_s.length < 1000)
    f_next =fibonacci.last(2).inject(0, :+)
    fibonacci << f_next
  end

  fibonacci.length
end
print fibonacci_number_series
