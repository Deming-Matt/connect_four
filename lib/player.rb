#Player Input
require './lib/board'


class Player
  attr_reader :name
  def initialize
    @name = name

  end

  def place_piece
    @user_input = "C"

    if @user_input.upcase != @game_board[:row0].values #hash key
      p "Sorry, please try again."
    elsif @user_input.upcase == "a"
      # @game_board.keys.each do |row|
      if @game_board[:row6][0] == "."
        @game_board[:row6][0].replace("X")
      elsif @game_board[:row5][0] == "."
        @game_board[:row5][0].replace("X")
      elsif @game_board[:row4][0] == "."
        @game_board[:row4][0].replace("X")
      elsif @game_board[:row3][0] == "."
        @game_board[:row3][0].replace("X")
      elsif @game_board[:row2][0] == "."
        @game_board[:row2][0].replace("X")
      elsif @game_board[:row1][0] == "."
        @game_board[:row1][0].replace("X")
      end
    elsif @user_input.upcase == "b"
      # @game_board.keys.each do |row|
      if @game_board[:row6][1] == "."
        @game_board[:row6][1].replace("X")
      elsif @game_board[:row5][1] == "."
        @game_board[:row5][1].replace("X")
      elsif @game_board[:row4][1] == "."
        @game_board[:row4][1].replace("X")
      elsif @game_board[:row3][1] == "."
        @game_board[:row3][1].replace("X")
      elsif @game_board[:row2][1] == "."
        @game_board[:row2][1].replace("X")
      elsif @game_board[:row1][1] == "."
        @game_board[:row1][1].replace("X")
      end
    elsif @user_input.upcase == "c"
      # @game_board.keys.each do |row|
      if @game_board[:row6][2] == "."
        @game_board[:row6][2].replace("X")
      elsif @game_board[:row5][2] == "."
        @game_board[:row5][2].replace("X")
      elsif @game_board[:row4][2] == "."
        @game_board[:row4][2].replace("X")
      elsif @game_board[:row3][2] == "."
        @game_board[:row3][2].replace("X")
      elsif @game_board[:row2][2] == "."
        @game_board[:row2][2].replace("X")
      elsif @game_board[:row1][2] == "."
        @game_board[:row1][2].replace("X")
      end
    elsif @user_input.upcase == "d"
      # @game_board.keys.each do |row|
      if @game_board[:row6][3] == "."
        @game_board[:row6][3].replace("X")
      elsif @game_board[:row5][3] == "."
        @game_board[:row5][3].replace("X")
      elsif @game_board[:row4][3] == "."
        @game_board[:row4][3].replace("X")
      elsif @game_board[:row3][3] == "."
        @game_board[:row3][3].replace("X")
      elsif @game_board[:row2][3] == "."
        @game_board[:row2][3].replace("X")
      elsif @game_board[:row1][3] == "."
        @game_board[:row1][3].replace("X")
      end
    elsif @user_input.upcase == "e"
      # @game_board.keys.each do |row|
      if @game_board[:row6][4] == "."
        @game_board[:row6][4].replace("X")
      elsif @game_board[:row5][4] == "."
        @game_board[:row5][4].replace("X")
      elsif @game_board[:row4][4] == "."
        @game_board[:row4][4].replace("X")
      elsif @game_board[:row3][4] == "."
        @game_board[:row3][4].replace("X")
      elsif @game_board[:row2][4] == "."
        @game_board[:row2][4].replace("X")
      elsif @game_board[:row1][4] == "."
        @game_board[:row1][4].replace("X")
      end
    elsif @user_input.upcase == "f"
      # @game_board.keys.each do |row|
      if @game_board[:row6][5] == "."
        @game_board[:row6][5].replace("X")
      elsif @game_board[:row5][5] == "."
        @game_board[:row5][5].replace("X")
      elsif @game_board[:row4][5] == "."
        @game_board[:row4][5].replace("X")
      elsif @game_board[:row3][5] == "."
        @game_board[:row3][5].replace("X")
      elsif @game_board[:row2][5] == "."
        @game_board[:row2][5].replace("X")
      elsif @game_board[:row1][5] == "."
        @game_board[:row1][5].replace("X")
      end
    elsif @user_input.upcase == "g"
      # @game_board.keys.each do |row|
      if @game_board[:row6][6] == "."
        @game_board[:row6][6].replace("X")
      elsif @game_board[:row5][6] == "."
        @game_board[:row5][6].replace("X")
      elsif @game_board[:row4][6] == "."
        @game_board[:row4][6].replace("X")
      elsif @game_board[:row3][6] == "."
        @game_board[:row3][6].replace("X")
      elsif @game_board[:row2][6] == "."
        @game_board[:row2][6].replace("X")
      elsif @game_board[:row1][6] == "."
        @game_board[:row1][6].replace("X")
      end
    end
    return @@game_board
    # return board_string

  end

  # # def player_input
  # p "pick your column"
  # p @@game_board
  # user_input = gets.chomp
  # #
  # # end

end


# require 'pry'
