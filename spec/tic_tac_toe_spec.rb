require './lib/board'
require './lib/win_logic'

describe 'PlayTicTacToe' do

  describe "#check_o_x" do
    game = PlayTicTacToe.new
    it "returns true if X or O exists" do
      expect(game.check_o_x("X")).to be (true)
    end

    it "returns false if not X or O" do
      expect(game.check_o_x("GFG")).to be (false)
    end
  end

  describe "#display_my_board" do
    game = PlayTicTacToe.new
    
    it "returns array of strings" do
      expect(game.display_my_board).to be_an_instance_of(Array)
    end
  end

  describe '#check_win' do 
    game = PlayTicTacToe.new
    it 'returns false when no win' do
      expect(game.check_win).to be (false)
    end
  end
end