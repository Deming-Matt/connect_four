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

  # def user_input
  #   input = [gets.chomp]
  # end

  def player_place_piece

    # if user_input != game_board[0]
    #   p "Sorry, please try again."
    #   user_input
    # end
#require 'pry';binding.pry
    user_input = "A"

    if user_input == "A"
      # board.keys.each do |row|
      if @game_board[6][0] == "."
        return @game_board[6][0] = "X"
      elsif @game_board[5][0] == "."
        return @game_board[5][0] = "X"
      elsif @game_board[4][0] == "."
        return @game_board[4][0] = "X"
      elsif @game_board[3][0] == "."
        return @game_board[3][0] = "X"
      elsif @game_board[2][0] == "."
        return @game_board[2][0] = "X"
      elsif @game_board[1][0] == "."
        return @game_board[1][0] = "X"
      elsif @game_board[1..6][0] == "X"
        p "Invalid entry. Please try again."  
      else user_input != @game_board[0..6]
        p "Sorry, please try again."
        #user_input
      end
    end


    if @user_input == "B"
      # board.keys.each do |row|
    elsif @game_board[6][1] == "."
        return @game_board[6][1] = "X"
      elsif @game_board[5][1] == "."
        return @game_board[5][1] = "X"
      elsif @game_board[4][1] == "."
        return @game_board[4][1] = "X"
      elsif @game_board[3][1] == "."
        return @game_board[3][1] = "X"
      elsif @game_board[2][1] == "."
        return @game_board[2][1] = "X"
      elsif @game_board[1][1] == "."
        return @game_board[1][1] = "X"
      else user_input != @game_board[0..6]
        p "Sorry, please try again."
        #user_input
    end

    if @user_input == "C"
      # board.keys.each do |row|
      elsif @game_board[6][2] == "."
        return @game_board[6][2] = "X"
      elsif @game_board[5][2] == "."
        return @game_board[5][2] = "X"
      elsif @game_board[4][2] == "."
        return @game_board[4][2] = "X"
      elsif @game_board[3][2] == "."
        return @game_board[3][2] = "X"
      elsif @game_board[2][2] == "."
        return @game_board[2][2] = "X"
      elsif @game_board[1][2] == "."
        return @game_board[1][2] = "X"
      else user_input != @game_board[0]
        p "Sorry, please try again."
        #user_input
    end

    if @user_input == "D"
      # board.keys.each do |row|
      elsif @game_board[6][3] == "."
        return @game_board[6][3] = "X"
      elsif @game_board[5][3] == "."
        return @game_board[5][3] = "X"
      elsif @game_board[4][3] == "."
        return @game_board[4][3] = "X"
      elsif @game_board[3][3] == "."
        return @game_board[3][3] = "X"
      elsif @game_board[2][3] == "."
        return @game_board[2][3] = "X"
      elsif @game_board[1][3] == "."
        return @game_board[1][3] = "X"
      else user_input != @game_board[0]
        p "Sorry, please try again."
        #user_input
    end

    if @user_input == "E"
      # board.keys.each do |row|
      elsif @game_board[6][4] == "."
        return @game_board[6][4] = "X"
      elsif @game_board[5][4] == "."
        return @game_board[5][4] = "X"
      elsif @game_board[4][4] == "."
        return @game_board[4][4] = "X"
      elsif @game_board[3][4] == "."
        return @game_board[3][4] = "X"
      elsif @game_board[2][4] == "."
        return @game_board[2][4] = "X"
      elsif @game_board[1][4] == "."
        return @game_board[1][4] = "X"
      else user_input != @game_board[0]
        p "Sorry, please try again."
        #user_input
    end

    if @user_input == "F"
      # board.keys.each do |row|
      elsif @game_board[6][5] == "."
        return @game_board[6][5] = "X"
      elsif @game_board[5][5] == "."
        return @game_board[5][5] = "X"
      elsif @game_board[4][5] == "."
        return @game_board[4][5] = "X"
      elsif @game_board[3][5] == "."
        return @game_board[3][5] = "X"
      elsif @game_board[2][5] == "."
        return @game_board[2][5] = "X"
      elsif @game_board[1][5] == "."
        return @game_board[1][5] = "X"
      else user_input != @game_board[0]
        p "Sorry, please try again."
        #user_input
    end

    if @user_input == "G"
      # board.keys.each do |row|
      elsif @game_board[6][6] == "."
        return @game_board[6][6] = "X"
      elsif @game_board[5][6] == "."
        return @game_board[5][6] = "X"
      elsif @game_board[4][6] == "."
        return @game_board[4][6] = "X"
      elsif @game_board[3][6] == "."
        return @game_board[3][6] = "X"
      elsif @game_board[2][6] == "."
        return @game_board[2][6] = "X"
      elsif @game_board[1][6] == "."
        return @game_board[1][6] = "X"
      else user_input != @game_board[0]
        p "Sorry, please try again."
        #user_input
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
