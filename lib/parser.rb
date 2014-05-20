class Parser

  def initialize(grid)
    @grid = grid
  end

  def locate_point
    # split each line of input
    lines = @grid.split("\n")
    # shift it down one and remove the first character, which is not needed
    lines.shift
    # set the values of x and y to 0
    x, y = 0, 0
    #   iterate through each line and split each character
    lines.each do |line|
      characters = line.split("")
      # shifts down one to check each character
      characters.shift
      if x = characters.index("X")
        break
      else
        y -=1
      end
    end
    [x, y]
  end
end



