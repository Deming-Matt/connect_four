require 'pry'

class Board
  attr_reader :game_board, :game_intro

  def initialize
    @game_board = playing_board
    # @game_intro = game_intro

  end

  def playing_board

# game board options

# option1:
    game_board ={
      row1: {c1: ".",c2: ".",c3: ".",c4: ".",c5: ".",c6: ".", c7: "."},
      row2: {c1: ".",c2: ".",c3: ".",c4: ".",c5: ".",c6: ".", c7: "."},
      row3: {c1: ".",c2: ".",c3: ".",c4: ".",c5: ".",c6: ".", c7: "."},
      row4: {c1: ".",c2: ".",c3: ".",c4: ".",c5: ".",c6: ".", c7: "."},
      row5: {c1: ".",c2: ".",c3: ".",c4: ".",c5: ".",c6: ".", c7: "."},
      row6: {c1: ".",c2: ".",c3: ".",c4: ".",c5: ".",c6: ".", c7: "."}
    }

# Option2:
    # game_board = {
    #   :a1 => ".", :a2 => ".", :a3 => ".", :a4 => ".", :a5 => ".", :a6 => ".",
    #   :b1 => ".", :b2 => ".", :b3 => ".", :b4 => ".", :b5 => ".", :b6 => ".",
    #   :c1 => ".", :c2 => ".", :c3 => ".", :c4 => ".", :c5 => ".", :c6 => ".",
    #   :d1 => ".", :d2 => ".", :d3 => ".", :d4 => ".", :d5 => ".", :d6 => ".",
    #   :e1 => ".", :e2 => ".", :e3 => ".", :e4 => ".", :e5 => ".", :e6 => ".",
    #   :f1 => ".", :f2 => ".", :f3 => ".", :f4 => ".", :f5 => ".", :f6 => ".",
    #   :g1 => ".", :g2 => ".", :g3 => ".", :g4 => ".", :g5 => ".", :g6 => "."
    # }
binding.pry
    puts "ABCDEFG"
    puts
    puts game_board[:a1..:a6]
    puts
    puts game_board[b1..b6]
    puts
    puts game_board[c1..c6]
    puts
    puts game_board[d1..d6]
    puts
    puts game_board[e1..e6]
    puts
    puts game_board[f1..f6]
    puts
    puts game_board[g1..g6]

  end

  def game_intro
    game_intro = "Welcome to CONNECT FOUR! /n Enter p to play. /n Enter q to quit."
    p game_intro
  end
# binding.pry
end
