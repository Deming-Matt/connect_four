require './lib/player'


  def game_board
    game_board =[ #changed board to an array of arrays
      [ "A",  "B",  "C",  "D",  "E",  "F",  "G"],
      [ '_',  '_',  '_',  '_',  '_',  '_',  '_'],
      [ '_',  '_',  '_',  '_',  '_',  '_',  '_'],
      [ '_',  '_',  '_',  '_',  '_',  '_',  '_'],
      [ '_',  '_',  '_',  '_',  '_',  '_',  '_'],
      [ '_',  '_',  '_',  '_',  '_',  '_',  '_'],
      [ '_',  '_',  '_',  '_',  '_',  '_',  '_']
    ]

  end

  def visual_board
    game_board.each do |row|
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
      else play_button.downcase != "p"
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
    user_input = [gets.chomp]
  end

  def player_place_piece

    # if user_input != game_board[0]
    #   p "Sorry, please try again."
    #   user_input
    # end

    if user_input == "A"
      # board.keys.each do |row|
      elsif game_board[6][0] == "_"
        game_board[6][0].replace("X")
      elsif game_board[5][0] == "_"
        game_board[5][0].replace("X")
      elsif game_board[4][0] == "_"
        game_board[4][0].replace("X")
      elsif game_board[3][0] == "_"
        game_board[3][0].replace("X")
      elsif game_board[2][0] == "_"
        game_board[2][0].replace("X")
      elsif game_board[1][0] == "_"
        game_board[1][0].replace("X")
      else user_input != game_board[0]
        p "Sorry, please try again."
        user_input
    end

    if @user_input == "B"
      # board.keys.each do |row|
      elsif game_board[6][1] == "_"
        game_board[6][1].replace("X")
      elsif game_board[5][1] == "_"
        game_board[5][1].replace("X")
      elsif game_board[4][1] == "_"
        game_board[4][1].replace("X")
      elsif game_board[3][1] == "_"
        game_board[3][1].replace("X")
      elsif game_board[2][1] == "_"
        game_board[2][1].replace("X")
      elsif game_board[1][1] == "_"
        game_board[1][1].replace("X")
      else user_input != game_board[0]
        p "Sorry, please try again."
        user_input
    end

    if @user_input == "C"
      # board.keys.each do |row|
      elsif game_board[6][2] == "_"
        game_board[6][2].replace("X")
      elsif game_board[5][2] == "_"
        game_board[5][2].replace("X")
      elsif game_board[4][2] == "_"
        game_board[4][2].replace("X")
      elsif game_board[3][2] == "_"
        game_board[3][2].replace("X")
      elsif game_board[2][2] == "_"
        game_board[2][2].replace("X")
      elsif game_board[1][2] == "_"
        game_board[1][2].replace("X")
      else user_input != game_board[0]
        p "Sorry, please try again."
        user_input
    end

    if @user_input == "D"
      # board.keys.each do |row|
      elsif game_board[6][3] == "_"
        game_board[6][3].replace("X")
      elsif game_board[5][3] == "_"
        game_board[5][3].replace("X")
      elsif game_board[4][3] == "_"
        game_board[4][3].replace("X")
      elsif game_board[3][3] == "_"
        game_board[3][3].replace("X")
      elsif game_board[2][3] == "_"
        game_board[2][3].replace("X")
      elsif game_board[1][3] == "_"
        game_board[1][3].replace("X")
      else user_input != game_board[0]
        p "Sorry, please try again."
        user_input
    end

    if @user_input == "E"
      # board.keys.each do |row|
      elsif game_board[6][4] == "_"
        game_board[6][4].replace("X")
      elsif game_board[5][4] == "_"
        game_board[5][4].replace("X")
      elsif game_board[4][4] == "_"
        game_board[4][4].replace("X")
      elsif game_board[3][4] == "_"
        game_board[3][4].replace("X")
      elsif game_board[2][4] == "_"
        game_board[2][4].replace("X")
      elsif game_board[1][4] == "_"
        game_board[1][4].replace("X")
      else user_input != game_board[0]
        p "Sorry, please try again."
        user_input
    end

    if @user_input == "F"
      # board.keys.each do |row|
      elsif game_board[6][5] == "_"
        game_board[6][5].replace("X")
      elsif game_board[5][5] == "_"
        game_board[5][5].replace("X")
      elsif game_board[4][5] == "_"
        game_board[4][5].replace("X")
      elsif game_board[3][5] == "_"
        game_board[3][5].replace("X")
      elsif game_board[2][5] == "_"
        game_board[2][5].replace("X")
      elsif game_board[1][5] == "_"
        game_board[1][5].replace("X")
      else user_input != game_board[0]
        p "Sorry, please try again."
        user_input
    end

    if @user_input == "G"
      # board.keys.each do |row|
      elsif game_board[6][6] == "_"
        game_board[6][6].replace("X")
      elsif game_board[5][6] == "_"
        game_board[5][6].replace("X")
      elsif game_board[4][6] == "_"
        game_board[4][6].replace("X")
      elsif game_board[3][6] == "_"
        game_board[3][6].replace("X")
      elsif game_board[2][6] == "_"
        game_board[2][6].replace("X")
      elsif game_board[1][6] == "_"
        game_board[1][6].replace("X")
      else user_input != game_board[0]
        p "Sorry, please try again."
        user_input
    end

end

# welcome
p "Choose a Column"
user_input
# player = Player.new
player_place_piece
visual_board
# class Player
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
