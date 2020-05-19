require_relative '../lib/win_logic'

class PlayTicTacToe
  def initialize(player1, player2)
    @board = %w[
      _ _ _
      _ _ _
      _ _ _
    ]
    @player1 = player1
    @player2 = player2
  end

  def display_my_board
    @board
  end

  def check_win
    validate = GameWinLogic.new(@board)
    my_arr = [[0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8], [2, 4, 6]]
    my_arr.each do |item|
      return true if validate.validate_wins(item[0], item[1], item[2])
    end
    false
  end

  def if_tie
    result = @board.all? do |item|
      item != '_'
    end
    result
  end
end
