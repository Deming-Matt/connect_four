require 'pry'

class Board
  attr_reader :game_board
  def initialize
    @game_board = game_board

  end

  def playing_board

    game_board = {a1 => ".", a2 => ".", a3 => ".", a4 = ".", a5 => ".", a6 => ".",
      b1 => ".", b2 => ".", b3 => ".", b4 = ".", b5 => ".", b6 => ".",
      c1 => ".", c2 => ".", c3 => ".", c4 = ".", c5 => ".", c6 => ".",
      d1 => ".", d2 => ".", d3 => ".", d4 = ".", d5 => ".", d6 => ".",
      e1 => ".", e2 => ".", e3 => ".", e4 = ".", e5 => ".", e6 => ".",
      f1 => ".", f2 => ".", f3 => ".", f4 = ".", f5 => ".", f6 => ".",
      f1 => ".", f2 => ".", f3 => ".", f4 = ".", f5 => ".", f6 => "."}

    # p game_board[a1..a6]
    # p game_board[b1..b6]
    # p game_board[c1..c6]
    # p game_board[d1..d6]
    # p game_board[e1..e6]
    # p game_board[f1..f6]
    # p game_board[f1..f6]

  end



end
