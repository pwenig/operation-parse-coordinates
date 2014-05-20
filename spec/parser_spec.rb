require 'parser'

describe Parser do

  it 'can parse a grid of points and return the coordinates of a specific point on the grid' do
    grid = <<-INPUT
╔══════════╗
║X*********║
║**********║
║**********║
║**********║
║**********║
╚══════════╝
    INPUT
    coord_input = Parser.new(grid)
    expect(coord_input.locate_point).to eq ([0,0])
  end

  it 'can parse another grid' do
    grid_2 = <<-INPUT
╔══════════╗
║**********║
║*X********║
║**********║
║**********║
║**********║
╚══════════╝
    INPUT
    coord_input = Parser.new(grid_2)
    expect(coord_input.locate_point).to eq ([1,-1])
  end

  it 'can parse another grid' do
    grid_3 = <<-INPUT
╔══════════╗
║**********║
║**********║
║**********║
║*****X****║
║**********║
╚══════════╝
    INPUT
    coord_input = Parser.new(grid_3)
    expect(coord_input.locate_point).to eq ([5,-3])
  end


end
