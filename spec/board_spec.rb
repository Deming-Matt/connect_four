require './lib/board.rb'

require 'pry'

RSpec.describe Board do

  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of Board
  end

  it "has introduction" do
    board = Board.new

    expect(game_intro).to eq "Welcome to CONNECT FOUR! Enter p to play. Enter q to quit."
  end

  it "has a board" do

      board = Board.new

      expect(board).to eq "
      ABCDEFG
      .......
      .......
      .......
      .......
      .......
      ......."
  end

end
