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
end
