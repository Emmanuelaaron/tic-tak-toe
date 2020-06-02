require './lib/game_win_logic'

describe 'GameWinLogic' do
  describe '#validate_wins' do
    board = %w[
      X X X
      4 5 6
      7 8 9
    ]
    validate = GameWinLogic.new(board)
    it 'returns true if items in the cells of rows, colums and diagonals are the same' do
      expect(validate.validate_wins(0, 1, 2)).to be true
    end
  end
end
