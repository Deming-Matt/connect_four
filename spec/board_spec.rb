require './lib/board'

require 'pry'

RSpec.describe Board do

  it "exists" do
    board = Board.new

    expect(board).to be_an_instance_of Board
  end
end
