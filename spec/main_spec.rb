# require './bin/main'
require File.expand_path('../bin/main', __dir__)

RSpec.describe do
  describe 'flip_player' do
    let(:player1) { 'Nouva' }
    let(:player2) { 'Jay' }
    let(:current_player) { 'X' }
    it 'prints player\'s name if it\'s theire turn to play' do
      expect { flip_player(current_player, player1, player2) }.to output("It's Jay's turn to play\n").to_stdout
    end
  end

  describe 'check_tie' do
    let(:my_game) { PlayTicTacToe.new }
    it 'returns nothing when there is no tie' do
      expect {check_tie(my_game)}.to output("").to_stdout
    end
  end

  describe 'check_win' do
    let(:my_game) { PlayTicTacToe.new }
    it 'returns nothing when there is no win' do
      expect {check_win(my_game)}.to output("").to_stdout
    end
  end
  describe 'current_player' do
    let(:player1) {'Jay'}
    let(:player2) {'Emma'}
    it 'returns the name of the player who wins' do
      expect {current_player(player1, player2)}.to output("Emma wins. Game Over!\n").to_stdout
    end
  end
end
