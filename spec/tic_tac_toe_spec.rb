require './lib/board'

describe 'PlayTicTacToe' do
  describe "#check_o_x" do
    game = PlayTicTacToe.new("emma", "jay")
    it "returns true if X or O exists" do
      expect(game.check_o_x("X")).to be (true)
    end

    it "returns false if not X or O" do
      expect(game.check_o_x("GFG")).to be (false)
    end
  end
end