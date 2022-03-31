require './lib/board.rb'

require 'pry'

RSpec.describe Board do

  it "exists" do
    game_board = Board.new

    expect(game_board).to be_an_instance_of Board
  end

  it "has introduction" do
    game_board = Board.new

    expect(game_intro).to eq "Welcome to CONNECT FOUR! Enter p to play. Enter q to quit."
  end

  it "has a game_board" do

      game_board = Board.new

      expect(game_board).to eq "
      ABCDEFG
      .......
      .......
      .......
      .......
      .......
      ......."
  end



end
