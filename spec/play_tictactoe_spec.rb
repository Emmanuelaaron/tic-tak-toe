require './lib/play_tictactoe'
require './lib/game_win_logic'

describe 'PlayTicTacToe' do
  let(:game) { PlayTicTacToe.new }

  describe '#check_o_x' do
    it 'returns true if X or O exists' do
      expect(game.check_o_x('X')).to be true
    end

    it 'returns false if not X or O' do
      expect(game.check_o_x('GFG')).to be false
    end
  end

  describe '#display_my_board' do
    it 'returns array of strings' do
      expect(game.display_my_board).to be_an_instance_of(Array)
    end
  end

  describe '#check_win' do
    it 'returns false when no win' do
      expect(game.check_win).to be false
    end
  end

  describe '#if_tie' do
    game = PlayTicTacToe.new

    it 'returns false when there is no tie' do
      expect(game.if_tie).to be(false)
    end
  end
end
