class GameWinLogic
  def initialize(board, current_player)
    @board = board
    @current_player = current_player
  end

  def validate_wins(pos_a, pos_b, pos_c)
    true if @board[pos_a] == @board[pos_b] && @board[pos_b] == @board[pos_c] && @board[pos_a] != '_'
  end
end
