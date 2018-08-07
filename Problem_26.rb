def recurr (n)
  #
  if (n % 2 == 0 || n % 5 == 0 )
  return 0
  end
  i = 1
  # check for the length of the fraction
  until (((10 ** i)-1) % n) == 0
  i += 1
  end
  i
end
def reciprocal_cycles
  i = 1
  max_count = 1
  count = 1

  while i < 1000
    count = recurr(i)
    #  find the number with the max recurr count
    if count > max_count
      max_count = count
      reciprocal_num = i
    end

    i += 1
  end

reciprocal_num
end
print reciprocal_cycles
