require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/turn'
require './lib/win'
require './lib/game'
require 'pry'


game = Game.new

# require 'pry'; binding.pry
game.start
game.welcome
p "Choose a Column"
game.player.player_place_piece
game.board.visual_board
game.computer.random_column
game.win.victory
