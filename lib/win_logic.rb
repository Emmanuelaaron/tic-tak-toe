class GameWinLogic
    def initialize(board, current_player)
      @board = board
      @current_player = current_player
    end
    def validate_wins(pos_a, pos_b, pos_c, player2, player1)
      if @board[pos_a] == @board[pos_b] && @board[pos_b] == @board[pos_c] && @board[pos_a] != '_'
        true
      end
    end
  end