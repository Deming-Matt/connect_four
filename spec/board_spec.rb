require './lib/board.rb'

require 'pry'

RSpec.describe Board do

  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of Board
  end

  xit "has a start method" do

    board = Board.new

    expect(board.welcome).to eq(board.start)
  end

  xit "has introduction" do
    board = Board.new

    expect(board.start).to eq "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
  end

  xit "has a board_string" do

      board = Board.new

      expect(board.board_string).to eq "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
  end

  xit "has a quit line" do

    board = Board.new

    expect(board.welcome).to eq "Sorry you don't wanna play, see you next time."
  end

  xit "has a quit line" do

    board = Board.new

    expect(board.welcome).to eq (board.welcome)
  end





end
