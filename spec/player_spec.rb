require "./lib/board"
require "./lib/player"

RSpec.describe Player do
  it "exists" do
    player = Player.new

    expect(player).to be_an_instance_of Player
  end

  it "will place a X on the board" do
    player = Player.new
    @user_input = user_input
    user_input = "c"
    player.place_piece
    expect(player.place_piece).to eq "ABCDEFG"
    "......."
    "......."
    "......."
    "......."
    "......."
    "..X...."
    expect(player).to be_an_instance_of Player

  end

end
