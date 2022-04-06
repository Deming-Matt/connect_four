require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/turn'
require './lib/win'
require './lib/game'
require 'pry'


game = Game.new

game.welcome
game.player.place_piece
game.win.win_check
game.board.visual_board
game.player.place_piece
game.win.win_check
game.board.visual_board
game.player.place_piece
game.win.win_check
game.board.visual_board
game.player.place_piece
game.win.win_check
game.board.visual_board
game.win.win_check
