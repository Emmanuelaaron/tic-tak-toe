require_relative '../lib/play_tictactoe'

def display_board(my_game)
  puts my_game.display_my_board[0] + '|' + my_game.display_my_board[1] + '|' + my_game.display_my_board[2]
  puts my_game.display_my_board[3] + '|' + my_game.display_my_board[4] + '|' + my_game.display_my_board[5]
  puts my_game.display_my_board[6] + '|' + my_game.display_my_board[7] + '|' + my_game.display_my_board[8]
end

def players_turn
  puts 'choose from 1 - 9'
  turn = gets.chomp.to_i
  arr = (1..9)
  until arr.include? turn
    display_board(@my_game)
    puts 'invalid choose from 1 - 9'
    turn = gets.chomp.to_i
  end
  turn -= 1

  while @my_game.display_my_board[turn] == 'X' || @my_game.display_my_board[turn] == 'O'
    display_board(@my_game)
    puts 'Slot already taken or invalid, choose from 1 - 9'
    turn = gets.chomp.to_i
    turn -= 1
  end
  @my_game.display_my_board[turn] = @current_player
end

def flip_player(current_player, player1, player2)
  if current_player == 'X'
    puts "It's #{player2}'s turn to play"
    'O'
  else
    puts "It's #{player1}'s turn to play"
    'X'
  end
end

def check_win(my_game)
  @game_on_going = false if my_game.check_win
  current_player(@player1, @player2) if my_game.check_win
end

def current_player(player1, player2)
  if @current_player == 'X'
    puts "#{player1} wins. Game Over!"
  else
    puts "#{player2} wins. Game Over!"
  end
end

def check_tie(my_game)
  @game_on_going = false if my_game.if_tie
  puts "It's a tie. Game over!" if my_game.if_tie && !my_game.check_win
end

def play_game
  display_board(@my_game)
  puts "It's #{@player1}'s turn to play"
  while @game_on_going
    players_turn
    display_board(@my_game)
    check_tie(@my_game)
    check_win(@my_game)
    @current_player = flip_player(@current_player, @player1, @player2) if @game_on_going
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Player1's name"
  @player1 = gets.chomp

  while @player1.split.empty?
    puts "Please insert player1's name! can't be blank"
    @player1 = gets.chomp
  end
  puts "Playe2's name"
  @player2 = gets.chomp
  while @player2.split.empty? || @player2 == @player1
    puts "insert Player2 name and it should be differnt from player1's"
    @player2 = gets.chomp
  end
  @game_on_going = true
  @current_player = 'X'

  @my_game = PlayTicTacToe.new

  play_game
end
