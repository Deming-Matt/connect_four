require './lib/board'
require './lib/player'
require './lib/computer'

class Turn
  attr_reader
  def initialize(game_board)
    @board = game_board
    @turns = 0


  end

  def turn_loop
    player_place_piece
    visual_board
    comp_place_piece
    visual_board
    @turns = turns + 2
    win conditions
  end

end
