def longest_collatz_sequence
  number = 1
  long_seq_size = 1
  long_seq_number = 1
  start_number = 1

  (2...1000000).each do |number|
    start_number = number
    size = 0
    #  generating the collatz sequence
    while number > 1
      (number % 2 == 0) ? number = number / 2 : number = 3*number + 1
      size += 1
    end
     # finding the longest sequence
    if (size > long_seq_size)
      long_seq_size = size
      long_seq_number = start_number
    end
     
  end
   long_seq_number
end
p longest_collatz_sequence
