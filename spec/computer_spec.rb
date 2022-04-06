
require "./lib/board"
require './lib/computer'

RSpec.describe Computer do
  before :each do
    @board = Board.new
    @computer = Computer.new(@board)
  end

  it "exists" do
    expect(@computer).to be_a(Computer)
  end

  it 'can return a value' do
    # ** with lib/computer.rb:15 commented out **
    expect(@computer.random_column("A")).to eq(0)
    expect(@computer.random_column("C")).to eq(2)
    expect(@computer.random_column("G")).to eq(6)
  end

  it 'can replace a "." with an "O"' do
    random_column = 0
    expect(@computer.place_piece(0)).to eq(@computer.board.include?("O"))
  end
end
