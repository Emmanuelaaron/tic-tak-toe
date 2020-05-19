require_relative '../lib/board'

puts "Player1's name"
@player1 = gets.chomp
puts "Playe2's name"
@player2 = gets.chomp
@game_on_going = true
@current_player = 'X'

@my_game = PlayTicTacToe.new(@player1, @player2)

def display_board
  puts @my_game.display_my_board[0] + '|' + @my_game.display_my_board[1] + '|' + @my_game.display_my_board[2]
  puts @my_game.display_my_board[3] + '|' + @my_game.display_my_board[4] + '|' + @my_game.display_my_board[5]
  puts @my_game.display_my_board[6] + '|' + @my_game.display_my_board[7] + '|' + @my_game.display_my_board[8]
end

def players_turn
  puts 'choose from 1 - 9'
  turn = gets.chomp.to_i
  arr = (1..9)
  until arr.include? turn
    display_board
    puts 'invalid choose from 1 - 9'
    turn = gets.chomp.to_i
  end
  turn -= 1
  while @my_game.display_my_board[turn] != '_'
    display_board
    puts 'Slot already taken or invalid, choose from 1 - 9'
    turn = gets.chomp.to_i
    turn -= 1
  end
  @my_game.display_my_board[turn] = @current_player
end

def flip_player
  if @current_player == 'X'
    @current_player = 'O'
    puts "It's #{@player2}'s turn to play"
  else
    @current_player = 'X'
    puts "It's #{@player1}'s turn to play"
  end
end

def check_win
  @game_on_going = false if @my_game.check_win
  current_player if @my_game.check_win
end

def current_player
  if @current_player == 'X'
    puts "#{@player1} wins"
  else
    puts "#{@player2} wins"
  end
end

def check_tie
  @game_on_going = false if @my_game.if_tie
  puts "It's a tie. Game over!" if @my_game.if_tie
end

def play_game
  display_board
  puts "It's #{@player1}'s turn to play"
  while @game_on_going
    players_turn
    display_board
    check_win
    check_tie
    flip_player if @game_on_going
  end
end

play_game
