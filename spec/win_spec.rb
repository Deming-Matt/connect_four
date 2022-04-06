require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/win'

RSpec.describe Win do
  before :each do
    @win = Win.new(@board)
  end

  it "exists" do

    expect(@win).to be_a(Win)
  end

  it 'returns #is_winner is false' do
    expect(@win.horizontal(0, 0)).to eq(false)
  end
end
