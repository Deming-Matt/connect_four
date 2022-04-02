require 'pry'

class Board
  attr_reader

  def initialize

    @game_board ={
      row0: [ "A",  "B",  "C",  "D",  "E",  "F",  "G"],
      row1: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row2: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row3: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row4: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row5: [ '.',  '.',  '.',  '.',  '.',  '.',  '.'],
      row6: [ '.',  '.',  '.',  '.',  '.',  '.',  '.']
    }
  end

  def board_string
    return @game_board.values.map { |row| row.join }.join("\n")
  end

  def start # Profesor T: why does this print twice? ; how do we use pry to run different methods?
    puts "Enter your name."
    name = "Matt" # gets.chomp
    puts "> #{name} Try to connect 4 X's in a row"
    puts board_string
  end
# require 'pry';binding.pry
  def welcome # Profesor T: Can we run a test on this, since it takes user input? What are the parameters for taking in user input and testing
    puts "Welcome to Connet Four! Enter p to play. Enter q to quit."
    play_button = "p" #gets.chomp
      if play_button.downcase == "p"
        return start
      elsif play_button.downcase == "q"
        p "Sorry you don't wanna play, see you next time."
      else play_button.downcase != "p"
         return welcome
      end

  end


end
