require File.expand_path('../bin/main', __dir__)

RSpec.describe do
  let(:my_game) { PlayTicTacToe.new }
  let(:player1) { 'Nouva' }
  let(:player2) { 'Jay' }
  describe 'flip_player' do
    let(:current_player) { 'X' }
    it 'prints player\'s name if it\'s theire turn to play' do
      expect { flip_player(current_player, player1, player2) }.to output("It's Jay's turn to play\n").to_stdout
    end
  end

  describe 'check_tie' do
    it 'returns nothing when there is no tie' do
      expect { check_tie(my_game) }.to output('').to_stdout
    end
  end

  describe 'check_win' do
    it 'returns nothing when there is no win' do
      expect { check_win(my_game) }.to output('').to_stdout
    end
  end

  describe 'current_player' do
    it 'returns the name of the player who wins' do
      expect { current_player(player1, player2) }.to output("Jay wins. Game Over!\n").to_stdout
    end
  end

  describe 'display_board' do
    it 'displays the board' do
      expect { display_board(my_game) }.to output("1|2|3\n4|5|6\n7|8|9\n").to_stdout
    end
  end
end
