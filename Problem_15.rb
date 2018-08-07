
def lattice_paths (row)
  size = @size+1
  #  row is lesser than half size
  if ( row <= size/2 )

    @grid[row]        = Array.new(row)
    @grid[row][0]     = 1
    @grid[row][row-1] = 1

    (1..row-2).each do |col|
      @grid[row][col]=@grid[row-1][col]+@grid[row-1][col-1]
    end
  #  row size greater than half size
   elsif (row <= size)

    @grid[row]  = Array.new(size-row)

    (size-row).times do |col|
      @grid[row][col]=@grid[row-1][col]+@grid[row-1][col+1]
    end

    else
      puts "Array Overbound"
   end
end

def best_route(n)
  @size = 2*(n)+1
  @grid = Array.new(@size)
  #  poopulate the grid with the possible paths
  @size .times do |i|
   lattice_paths(i+1)
 end
 puts @grid[@size][0]
end

 p best_route(20)
