# Computer Automation
class Computer
  attr_reader :columns, :board
  def initialize(board)
    @board = board
    @columns = columns
    columns = ["A", "B", "C", "D", "E", "F", "G"]

  end

  def random_column
    column = @columns.sample

    if column == "A"
      return 0
    elsif column == "B"
      return 1
    elsif column == "C"
      return 2
    elsif column == "D"
      return 3
    elsif column == "E"
      return 4
    elsif column == "F"
      return 5
    elsif column == "G"
      return 6
    end

    if @board[6][column] == "."
      return @board[6][column] = "O"
    elsif @board[5][column] == "."
      return @board[5][column] = "O"
    elsif @board[4][column] == "."
      return @board[4][column] = "O"
    elsif @board[3][column] == "."
      return @board[3][column] = "O"
    elsif @board[2][column] == "."
      return @board[2][column] = "O"
    elsif @board[1][column] == "."
      return @board[1][column] = "O"
    end
    random_column
  end

end
