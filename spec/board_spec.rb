require './lib/board'
require 'pry'

RSpec.describe Board do
  before :each do
    @board = Board.new
  end

  it "exists" do
    expect(@board).to be_a(Board)
  end

  it 'has attributes' do
    expect(@board.game_board).to eq([
    [ "A",  "B",  "C",  "D",  "E",  "F",  "G"],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."]
  ])
  end

  it 'can print the board for viewing' do
    expect(@board.visual_board).to eq("A B C D E F G
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .")
  end


end
