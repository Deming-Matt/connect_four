require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/turn'
require './lib/win'
require 'pry'

class Game
  attr_reader :board, :player, :computer, :win
  def initialize
    @board = Board.new
    @player = Player.new(@board.game_board)
    @computer = Computer.new(@board.game_board)
    @win = Win.new(@board.game_board)
  end
    # binding.pry

  def start
    p "Enter your name."
    name = gets.chomp
    p"#{name} Try to connect 4 X's in a row. Chose a Column."
    @board.visual_board
  end

  def welcome # Profesor T: Can we run a test on this, since it takes user input? What are the parameters for taking in user input and testing
    puts "Welcome to Connect Four! Enter p to play. Enter q to quit."
      play_button = gets.chomp
      if play_button.downcase == "p"
        start
      elsif play_button.downcase == "q"
        puts "Sorry you don't wanna play, see you next time."
      else #play_button.downcase != "p"
        welcome
      end
  end

end

#   p "Player Wins! Fatality!"
# end
#
# class Computer
#   p "You buggin'! Computer Always Wins!
# end
#
# class Game
#   p "It's a Draw! Everybody sit down and STFU!"
#end
