require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/turn'
require './lib/win'
require './lib/game'
require 'pry'


game = Game.new
turns = 0
game.welcome

until turns == 21
  game.player.place_piece
  game.board.visual_board
  game.win.win_check
  game.computer.place_piece
  game.board.visual_board
  game.win.win_check
  turns = turns + 1
  
end

if turns == 21
  p "It's a draw suckaa"
  game.welcome
end
if game.win.is_winner == true
  game.win.is_winner
  game.welcome
end



# game.welcome
# game.player.place_piece
# game.player.place_piece
# game.win.win_check
# game.player.place_piece
# game.player.place_piece
# game.win.win_check
# game.board.visual_board
# game.player.place_piece
# game.win.win_check
# game.board.visual_board
# game.player.place_piece
# game.win.win_check
# game.board.visual_board
# game.win.win_check
