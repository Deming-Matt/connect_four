
require 'pry'

class Board
  attr_reader :game_board

  def initialize
    @game_board =[ #changed board to an array of arrays
    [ "A",  "B",  "C",  "D",  "E",  "F",  "G"],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
    [ ".",  ".",  ".",  ".",  ".",  ".",  "."]
  ]
  end

  def visual_board
    @game_board.each do |row|
      puts row.join(" ")
    end
  end

end
