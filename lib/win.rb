require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/turn'
require './lib/game'

class Win
  attr_reader :board, :player_wins, :computer_wins, :is_winner

  def initialize(game_board)
    @board = game_board
    @player_wins = false
    @computer_wins = false
    @is_winner = false
  end

  def start
    p "Enter your name."
    name = gets.chomp
    p"#{name} Try to connect 4 X's in a row"
    @board.visual_board
  end

  def welcome # Profesor T: Can we run a test on this, since it takes user input? What are the parameters for taking in user input and testing
    puts "Welcome to Connect Four! Enter p to play. Enter q to quit."
      play_button = gets.chomp
      if play_button.downcase == "p"
        start
      elsif play_button.downcase == "q"
        puts "Sorry you don't wanna play, see you next time."
      else #play_button.downcase != "p"
        welcome
      end
  end

  #checking board
  #outer loop row, inner loop col

  def win_check#checking horzontal [0..3]
    @is_winner == false
    for row in 1..6 do
      for col in 0..6 do #checking horzontal inner [0..3]
        if col < 4
          horizontal(row,col)
          if @player_wins == true
            @is_winner = true
            p "Win for humanity"
            welcome
            break
          end
          if @computer_wins == true
            @is_winner = true
            p "Win for the machines"
            welcome
            break
          end
        else #draw @turns == 21 && @is_winner == false
          break
        end
        if row < 4
          vertical(row,col)
          if @player_wins == true
            @is_winner = true
            p "Win for humanity"
            welcome
            break
          end

          if @computer_wins == true
            @is_winner = true
            p "Win for the machines"
            welcome
            break
          end
        else #draw @turns == 21 && @is_winner == false
          break
        end
        if row < 4 || col < 4
          diagnal(row,col)
          if @player_wins == true
            @is_winner = true
            p "Win for humanity"
            welcome
            break
          end
          if @computer_wins == true
            @is_winner = true
            p "Win for the machines"
            welcome
            break
          end
        else #draw @turns == 21 && @is_winner == false
          break
        end
      end
    end
  end

  ##This code was going to check in the other direction
      #   if row > 3 || col < 3
      #     diagnal_lower(row,col)
      #     if @player_wins == true
      #       @is_winner = true
      #       p "Win for humanity"
      #       welcome
      #       break
      #     end
      #     if @computer_wins == true
      #       @is_winner = true
      #       p "Win for the machines"
      #       welcome
      #       break
      #     end
      #   else #draw @turns == 21 && @is_winner == false
      #     break
      #   end
      #
      # end
#########

  def horizontal(row,col)
    if @board[row][col] == "X" && @board[row][col+1] == "X" && @board[row][col+2] == "X" && @board[row][col+3] == "X"
      @player_wins = true
    end
    if @board[row][col] == "O" && @board[row][col+1] == "O" && @board[row][col+2] == "O" && @board[row][col+3] == "O"
      @computer_wins = true
    end
  end

  def vertical(row,col)
    if @board[row][col] == "X" && @board[row+1][col] == "X" && @board[row+2][col] == "X" && @board[row+3][col] == "X"
      @player_wins = true
    end
    if @board[row][col] == "O" && @board[row+1][col] == "O" && @board[row+2][col] == "O" && @board[row+3][col] == "O"
      @computer_wins = true
    end
  end

  def diagnal(row,col)   #checking diagnal [0..3]
    if @board[row][col] == "X" && @board[row+1][col+1] == "X" && @board[row+2][col+2] == "X" && @board[row+3][col+3] == "X"
      @player_wins = true
    end
    if @board[row][col] == "O" && @board[row+1][col+1] == "O" && @board[row+2][col+2] == "O" && @board[row+3][col+3] == "O"
      @computer_wins = true
    end
  end
#####
##to try to diagnal
  # def diagnal_lower(row,col)
  #   if @board[row+5][col] == "X" && @board[row+4][col+1] == "X" && @board[row+3][col+2] == "X" && @board[row+2][col+3] == "X"
  #     @player_wins = true
  #   end
  #   if @board[row+5][col] == "O" && @board[row+4][col+1] == "O" && @board[row+3][col+2] == "O" && @board[row+2][col+3] == "O"
  #     @computer_wins = true
  #   end
  # end

##option 2
  #   @board_hash = {
  #     a1: @board[6][0], a2: @board[5][0], a3: @board[4][0], a4: @board[3][0], a5: @board[2][0], a6: @board[1][0],
  #     b1: @board[6][1], b2: @board[5][1], b3: @board[4][1], b4: @board[3][1], b5: @board[2][1], b6: @board[1][1],
  #     c1: @board[6][2], c2: @board[5][2], c3: @board[4][2], c4: @board[3][2], c5: @board[2][2], c6: @board[1][2],
  #     d1: @board[6][3], d2: @board[5][3], d3: @board[4][3], d4: @board[3][3], d5: @board[2][3], d6: @board[1][3],
  #     e1: @board[6][4], e2: @board[5][4], e3: @board[4][4], e4: @board[3][4], e5: @board[2][4], e6: @board[1][4],
  #     f1: @board[6][5], f2: @board[5][5], f3: @board[4][5], f4: @board[3][5], f5: @board[2][5], f6: @board[1][5],
  #     g1: @board[6][6], g2: @board[5][6], g3: @board[4][6], g4: @board[3][6], g5: @board[2][6], g6: @board[1][6]
  #   }
  #   @winning_combos = [
  #     [:a1,:a2,:a3,:a4], [:a2,:a3,:a4,:a5], [:a3,:a4,:a5,:a6], [:b1,:b2,:b3,:b4], [:b2,:b3,:b4,:b5], [:b3,:b4,:b5,:b6], [:c1,:c2,:c3,:c4], [:c2,:c3,:c4,:c5], [:c3,:c4,:c5,:c6], [:d1,:d2,:d3,:d4], [:d2,:d3,:d4,:d5], [:d3,:d4,:d5,:d6], [:e1,:e2,:e3,:e4], [:e2,:e3,:e4,:e5], [:e3,:e4,:e5,:e6], [:f1,:f2,:f3,:f4], [:f2,:f3,:f4,:f5], [:f3,:f4,:f5,:f6], [:g1,:g2,:g3,:g4], [:g2,:g3,:g4,:g5], [:g3,:g4,:g5,:g6], [:a1,:b1,:c1,:d1], [:b1,:c1,:d1,:e1], [:c1,:d1,:e1,:f1], [:d1,:e1,:f1,:g1], [:a2,:b2,:c2,:d2], [:b2,:c2,:d2,:e2], [:c2,:d2,:e2,:f2], [:d2,:e2,:f2,:g2], [:a3,:b3,:c3,:d3], [:b3,:c3,:d3,:e3], [:c3,:d3,:e3,:f3], [:d3,:e3,:f3,:g3], [:a4,:b4,:c4,:d4], [:b4,:c4,:d4,:e4], [:c4,:d4,:e4,:f4], [:d4,:e4,:f4,:g4], [:a5,:b5,:c5,:d5], [:b5,:c5,:d5,:e5], [:c5,:d5,:e5,:f5], [:d5,:e5,:f5,:g5], [:a6,:b6,:c6,:d6], [:b6,:c6,:d6,:e6], [:c6,:d6,:e6,:f6], [:d6,:e6,:f6,:g6], [:d6,:c5,:b4,:a3], [:e6,:d5,:c4,:b3], [:f6,:e5,:d4,:c3], [:g6,:f5,:e4,:d3], [:d5,:c4,:b3,:a2], [:e5,:d4,:c3,:b2], [:f5,:e4,:d3,:c2], [:g5,:f4,:e3,:d2], [:d4,:c3,:b2,:a1], [:e4,:d3,:c2,:b1], [:f4,:e3,:d2,:c1], [:g4,:f3,:e2,:d1], [:a6,:b5,:c4,:d3], [:b6,:c5,:d4,:e3], [:c6,:d5,:e4,:f3], [:d6,:e5,:f4,:g3], [:a5,:b4,:c3,:d2], [:b5,:c4,:d3,:e2], [:c5,:d4,:e3,:f2], [:d5,:e4,:f3,:g2], [:a4,:b3,:c2,:d1], [:b4,:c3,:d2,:e1], [:c4,:d3,:e2,:f1], [:d4,:e3,:f2,:g1]
  #   ]
  # end
  #
  #   def win_scenarios
  #     @winning_combos.each do |combo|
  #       a = @board_hash[combo[0]]
  #       b = @board_hash[combo[1]]
  #       c = @board_hash[combo[2]]
  #       d = @board_hash[combo[3]]
  #       if a == b && b == c && c == d && a != "."
  #         if a = "X"
  #            player win
  #           break
  #         else #a = "O"
  #           computer win
  #           break
  #         end
  #       end
  #     end
  #   end
end
