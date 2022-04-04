#Player Input

class Player

  attr_reader :name

  def initialize
    @x = 0
    @turns = 0
  end

  def user_input
    @user_input = [gets.chomp]
  end

  def player_place_piece

    if @user_input != @board[0..6].values
      p "Sorry, please try again."
    end

    if @user_input == "a"
      # @board.keys.each do |row|
    elsif @board[6][0] == "_"
        @board[6][0].replace("X")
      elsif @board[5][0] == "_"
        @board[5][0].replace("X")
      elsif @board[4][0] == "_"
        @board[4][0].replace("X")
      elsif @board[3][0] == "_"
        @board[3][0].replace("X")
      elsif @board[2][0] == "_"
        @board[2][0].replace("X")
      elsif @board[1][0] == "_"
        @board[1][0].replace("X")
      end
    end

    if @user_input == "b"
      # @board.keys.each do |row|
      if @board[6][1] == "_"
        @board[6][1].replace("X")
      elsif @board[5][1] == "_"
        @board[5][1].replace("X")
      elsif @board[4][1] == "_"
        @board[4][1].replace("X")
      elsif @board[3][1] == "_"
        @board[3][1].replace("X")
      elsif @board[2][1] == "_"
        @board[2][1].replace("X")
      elsif @board[1][1] == "_"
        @board[1][1].replace("X")
      end
    end


    if @user_input == "c"
      # @board.keys.each do |row|
      if @board[6][2] == "_"
        @board[6][2].replace("X")
      elsif @board[5][2] == "_"
        @board[5][2].replace("X")
      elsif @board[4][2] == "_"
        @board[4][2].replace("X")
      elsif @board[3][2] == "_"
        @board[3][2].replace("X")
      elsif @board[2][2] == "_"
        @board[2][2].replace("X")
      elsif @board[1][2] == "_"
        @board[1][2].replace("X")
      end
    end

    if @user_input == "d"
      # @board.keys.each do |row|
      if @board[6][3] == "_"
        @board[6][3].replace("X")
      elsif @board[5][3] == "_"
        @board[5][3].replace("X")
      elsif @board[4][3] == "_"
        @board[4][3].replace("X")
      elsif @board[3][3] == "_"
        @board[3][3].replace("X")
      elsif @board[2][3] == "_"
        @board[2][3].replace("X")
      elsif @board[1][3] == "_"
        @board[1][3].replace("X")
      end
    end

    if @user_input == "e"
      # @board.keys.each do |row|
      if @board[6][4] == "_"
        @board[6][4].replace("X")
      elsif @board[5][4] == "_"
        @board[5][4].replace("X")
      elsif @board[4][4] == "_"
        @board[4][4].replace("X")
      elsif @board[3][4] == "_"
        @board[3][4].replace("X")
      elsif @board[2][4] == "_"
        @board[2][4].replace("X")
      elsif @board[1][4] == "_"
        @board[1][4].replace("X")
      end
    end

    if @user_input == "f"
      # @board.keys.each do |row|
      if @board[6][5] == "_"
        @board[6][5].replace("X")
      elsif @board[5][5] == "_"
        @board[5][5].replace("X")
      elsif @board[4][5] == "_"
        @board[4][5].replace("X")
      elsif @board[3][5] == "_"
        @board[3][5].replace("X")
      elsif @board[2][5] == "_"
        @board[2][5].replace("X")
      elsif @board[1][5] == "_"
        @board[1][5].replace("X")
      end
    end


    if @user_input == "g"
      # @board.keys.each do |row|
      if @board[6][6] == "_"
        @board[6][6].replace("X")
      elsif @board[5][6] == "_"
        @board[5][6].replace("X")
      elsif @board[4][6] == "_"
        @board[4][6].replace("X")
      elsif @board[3][6] == "_"
        @board[3][6].replace("X")
      elsif @board[2][6] == "_"
        @board[2][6].replace("X")
      elsif @board[1][6] == "_"
        @board[1][6].replace("X")
      end
    end
end
