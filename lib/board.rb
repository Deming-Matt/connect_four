require 'pry'

class Board
  attr_reader :game_board, :game_intro

  def initialize
    @game_board = game_board
    # @game_intro = game_intro

  end

  game_intro = "Welcome to CONNECT FOUR!

   Enter p to play. Enter q to quit.

   "
  # def play_or_quit(user_input)
  #   if user_input.downcase == "p"
  #     #start method here
  #   elsif user_input.downcase == "q"
  #     # quit method here
  #   else user_input.downcase != "p" || "q"
  #     #reprompt method here
  #   end
  # end


   def start
     p "Welcome to Connet Four! Enter your name."
     name = gets.chomp
     p "> #{name} Try to connect 4 X's in a row"
   end

  puts game_intro
  # def playing_board

    game_board ={
      row0: [ "A",  "B",  "C",  "D",  "E",  "F",  "G"],
      row1: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row2: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row3: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row4: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row5: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row6: [ '.',  '.',  '.',  '.',  '.',  '.',  '.']
    }
  # end
    p game_board[:row0].join
    p game_board[:row1].join
    p game_board[:row2].join
    p game_board[:row3].join
    p game_board[:row4].join
    p game_board[:row5].join
    p game_board[:row6].join

# binding.pry
end
