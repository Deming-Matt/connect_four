#Player Input
require './lib/board'


class Player
 attr_reader :game_board
  def initialize(game_board)
    @board = game_board

  end

    def user_input
      input = gets.chomp
      if input == "A"
        return 0
      elsif input == "B"
        return 1
      elsif input == "C"
        return 2
      elsif input == "D"
        return 3
      elsif input == "E"
        return 4
      elsif input == "F"
        return 5
      elsif input == "G"
        return 6
      else
        return -1
      end
    end

    def place_piece
      p "Choose a Column."
      column = user_input

      if column < 0
        p "Invalid column letter. Please enter a letter A-G."
        place_piece
        elsif @board[6][column] == "."
          return @board[6][column] = "X"
        elsif @board[5][column] == "."
          return @board[5][column] = "X"
        elsif @board[4][column] == "."
          return @board[4][column] = "X"
        elsif @board[3][column] == "."
          return @board[3][column] = "X"
        elsif @board[2][column] == "."
          return @board[2][column] = "X"
        elsif @board[1][column] == "."
          return @board[1][column] = "X"
        else # user_input != @game_board[0..6]
          p "This column is full. Please choose another column"
          place_piece
      end
    end

end
