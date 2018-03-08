require './module.rb'

class BoardGame
  include Board

  @@player_turn = "O"

  #create new board with new instance
  def initialize
    @@board = Array.new([["-","-","-"],["-","-","-"],["-","-","-"]])
  end

  public
  #play the game using the private methods and loops
  def play
    player = 1

    welcome_comment

    while (check_game_end == false) do
      display
      puts "Player #{player} turn: "
      player_input = gets.chop
      while (!check_input(player_input)) do
        player_input = gets.chop
      end
      mark(player_input)
      #switch player after input
      player == 1 ? player += 1 : player -=1
    end

    display
    puts "Game Over"
  end

  private
  def display
    display_board(@@board)
  end

  #marking user's input to the board
  def mark (input)
    @@board = mark_input(@@board, input, @@player_turn)
    #switch player after input
    @@player_turn == "O" ? @@player_turn = "X" : @@player_turn = "O"
  end

  #checking wheter game should end or not
  def check_game_end
    game_end(@@board)
  end
end
