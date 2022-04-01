require 'pry'

class Board
  attr_reader :board

  def initialize
    @board = board
    # @game_intro = game_intro

  end

  game_board ={
    row0: [ "A",  "B",  "C",  "D",  "E",  "F",  "G"],
    row1: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
    row2: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
    row3: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
    row4: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
    row5: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
    row6: [ '.',  '.',  '.',  '.',  '.',  '.',  '.']
  }
  
  def start
    p "Welcome to Connet Four! Enter your name."
    name = gets.chomp
    p "> #{name} Try to connect 4 X's in a row"

    p game_board[:row0].join
    p game_board[:row1].join
    p game_board[:row2].join
    p game_board[:row3].join
    p game_board[:row4].join
    p game_board[:row5].join
    p game_board[:row6].join
  end

  def play_or_quit(user_input)
    if user_input.downcase == "p"
      board.start
    elsif user_input.downcase == "q"
      # quit method here
    else user_input.downcase != "p"
      #reprompt method here
    end
  end

  def game_intro
    p "Welcome to CONNECT FOUR!
    Enter p to play. Enter q to quit."
    user_input = gets.chomp
    board.play_or_quit
  end



  # def playing_board

  # end


end

# p game_intro
# p start
