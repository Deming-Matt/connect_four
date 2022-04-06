require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/win'
require './lib/game'

RSpec.describe Game do
  before :each do
    game = Game.new
  end

  it "exists" do

    expect(game).to be_a(Game)
  end

end
