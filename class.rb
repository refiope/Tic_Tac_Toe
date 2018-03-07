require './module.rb'

class BoardGame
  include Board

  @@player_turn = "O"

  def initialize
    @@board = Array.new([["-","-","-"],["-","-","-"],["-","-","-"]])
  end

  def play
    player = 1

    welcome_comment
    while (check_game_end == false) do
      display
      puts "Player #{player} turn: "
      input = gets.chop
      mark(input)
      player == 1 ? player += 1 : player -=1
    end
    display
    puts "Game Over"
  end

  def display
    display_board(@@board)
  end

  def mark (input)
    @@board = mark_input(@@board, input, @@player_turn) #have to figure out getting input later
    @@player_turn == "O" ? @@player_turn = "X" : @@player_turn = "O"
  end

  def empty
    @@board = empty_board(@@board)
  end

  def check_game_end
    game_end(@@board)
  end
end
