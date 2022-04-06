# Computer Automation
require './lib/board'
class Computer
  attr_reader :columns, :game_board

  def initialize(game_board)
    @board = game_board
    @columns = columns
    columns = ["A", "B", "C", "D", "E", "F", "G"]

  end

  def random_column
      @columns = ["A", "B", "C", "D", "E", "F", "G"]
      random = @columns.sample


      if random == "A"
        return 0
      elsif random == "B"
        return 1
      elsif random == "C"
        return 2
      elsif random == "D"
        return 3
      elsif random == "E"
        return 4
      elsif random == "F"
        return 5
      elsif random == "G"
        return 6
      else
        return -1
      end
    end

    def place_piece
      comp_column = random_column

        if @board[6][comp_column] == "."
          return @board[6][comp_column] = "O"
        elsif @board[5][comp_column] == "."
          return @board[5][comp_column] = "O"
        elsif @board[4][comp_column] == "."
          return @board[4][comp_column] = "O"
        elsif @board[3][comp_column] == "."
          return @board[3][comp_column] = "O"
        elsif @board[2][comp_column] == "."
          return @board[2][comp_column] = "O"
        elsif @board[1][comp_column] == "."
          return @board[1][comp_column] = "O"
        else
          random_column
        end
    end

end
