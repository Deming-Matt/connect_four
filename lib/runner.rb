require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/turn'
require './lib/win'
require './lib/game'
require 'pry'


game = Game.new

game.welcome
game.turn_loop
