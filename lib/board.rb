require 'pry'

class Board
  attr_reader

  def initialize
    @name = name
    # @game_intro = game_intro
    board = Board.new
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

  def play_or_quit(play_button)
    if play_button.downcase == "p"
      board.start
    elsif play_button.downcase == "q"
      # quit method here
    else play_button.downcase != "p"
      #reprompt method here
    end
  end

  def start
    p "Welcome to Connet Four! Enter p to play. Enter q to quit."
    play_button = gets.chomp
    board.play_or_quit
    p "Enter your name."
    name = gets.chomp
    p "> #{name} Try to connect 4 X's in a row"
    p board_string
  end

end
