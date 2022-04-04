require './lib/player'


  # def game_board
    @game_board =[ #changed board to an array of arrays
      [ "A",  "B",  "C",  "D",  "E",  "F",  "G"],
      [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
      [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
      [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
      [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
      [ ".",  ".",  ".",  ".",  ".",  ".",  "."],
      [ ".",  ".",  ".",  ".",  ".",  ".",  "."]
    ]

  # end

  def visual_board
    @game_board.each do |row|
      puts row.join(" ")
    end

  end

  def start
    p "Enter your name."
    name = gets.chomp
    p"#{name} Try to connect 4 X's in a row"
    visual_board
  end

  def welcome # Profesor T: Can we run a test on this, since it takes user input? What are the parameters for taking in user input and testing
    puts "Welcome to Connet Four! Enter p to play. Enter q to quit."
      play_button = gets.chomp
      if play_button.downcase == "p"
        start
      elsif play_button.downcase == "q"
        puts "Sorry you don't wanna play, see you next time."
      else #play_button.downcase != "p"
        welcome
      end

  end

  def check_for_win
    if game_board[6..0][0..6] == x #checking from the last row to the last column = x
      x += 1 #adding to the value of x
    else game_board[6..0][0..6] != x #checkig from the last row to the last column not = x
      x -= 1 #subracting from the value of x
    end

    if x <= 0 # stopping the x-value from = 0 to prevent negative values
      x = 0 # when the x-value dips below zero we reset to zero
    end
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

      end
    end


# welcome
p "Choose a Column"
player_place_piece
visual_board
player_place_piece
visual_board
player_place_piece
visual_board
player_place_piece
visual_board
player_place_piece
visual_board
player_place_piece
visual_board
player_place_piece
visual_board
player_place_piece
visual_board


#   p "Player Wins! Fatality!"
# end
#
# class Computer
#   p "You buggin'! Computer Always Wins!
# end
#
# class Game
#   p "It's a Draw! Everybody sit down and STFU!"
#end
