#Player Input

class Player

  def initialize

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

    def player_place_piece

      column = user_input

      if column < 0
        p "Invalid column letter. Please enter a letter A-G."
        player_place_piece
        elsif @game_board[6][column] == "."
          return @game_board[6][column] = "X"
        elsif @game_board[5][column] == "."
          return @game_board[5][column] = "X"
        elsif @game_board[4][column] == "."
          return @game_board[4][column] = "X"
        elsif @game_board[3][column] == "."
          return @game_board[3][column] = "X"
        elsif @game_board[2][column] == "."
          return @game_board[2][column] = "X"
        elsif @game_board[1][column] == "."
          return @game_board[1][column] = "X"
        else # user_input != @game_board[0..6]
          p "This column is full. Please choose another column"
          player_place_piece
      end
    end

end
