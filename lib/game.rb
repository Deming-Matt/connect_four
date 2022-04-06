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
    @turns = 0

    # binding.pry

  end
  def start
    p "Enter your name."
    name = gets.chomp
    p"#{name} Try to connect 4 X's in a row"
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

  def turn_loop
  if @turns == 21 && @is_winner == false
    p "Its a Draw"
  else
      player.place_piece
      board.visual_board
      win.win_check
      computer.place_piece
      board.visual_board
      win.win_check
      @turns = @turns + 1
      turn_loop

    end
  end
end
