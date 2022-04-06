require './lib/board'
require './lib/player'
require './lib/computer'

class Turn
  attr_reader :turns
  def initialize(game_board)
    @board = game_board
    @player = Player.new(@board.game_board)
    @computer = Computer.new(@board.game_board)
    @turns = 0
  end

end
