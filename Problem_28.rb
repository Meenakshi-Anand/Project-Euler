def number_spiral_diagonals
  sum = 1
  (3..1001).step(2).each do |n|
    squared = n** 2
    # populate the grid (start from right in clockwise dir)
    sum += squared + (squared - n + 1) + (squared - (2*n) + 2) + (squared - (3*n) + 3)
  end
  sum
end
p number_spiral_diagonals
