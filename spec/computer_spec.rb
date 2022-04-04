require "./lib/board"
require "./lib/player"

RSpec.describe ComputerPlayer do
  it "exists" do
    
    computer = ComputerPlayer.new()

    expect(computer).to be_an_instance_of ComputerPlayer
  end
end
