module Board
  def welcome_comment
    puts "Welcome to Tic-Tac-Toe console game! Choose where to mark by inputting"
    puts "two commands together: 'A-C' for choosing a row, and '1-3' for choosing"
    puts "a column! Enjoy."
  end

  def display_board(board)
    coordinate = ["A","B","C"]
    board.each_index do |row|
      puts ""
      print coordinate[row] + "  "
      board[row].each_index { |column| print board[row][column] + "  " }
      puts ""
    end
  end

  def convert_input (input)
    return input = 0 if input == 'a'
    return input = 1 if input == 'b'
    return input =  2 if input == 'c'
  end

  def mark_input (board, input, player_choice)
    array_input = input.split('')
    row_input = convert_input(array_input[0].downcase)
    column_input = (array_input[1].to_i) - 1
    board[row_input][column_input] = player_choice
    return board
  end

  def empty_board (board)
    board = [["-","-","-"],["-","-","-"],["-","-","-"]]
    return board
  end

  def horizontal_line (board) #have to modify this method to return the victor
    board.each_index do |row_index|
      if (board[row_index].all? { |position| position == "O" })
        return true
      elsif (board[row_index].all? { |position| position == "X"})
        return true
      end
    end
    return false
  end

  def vertical_line (board)
    transposed_board = board.transpose
    return horizontal_line (transposed_board)
  end

  def diagonal_line (board)
    if (board[0][0] == "O" && board[1][1] == "O" && board[2][2] == "O")
      return true
    elsif (board[2][0] == "O" && board[1][1] == "O" && board[0][2] == "O")
      return true
    elsif (board[0][0] == "X" && board[1][1] == "X" && board[2][2] == "X")
      return true
    elsif (board[2][0] == "X" && board[1][1] == "X" && board[0][2] == "X")
      return true
    end
    return false
  end

  def full_board (board)
    board.each_index do |row_index|
      return false if board[row_index].include?("-")
    end
    return true
  end

  def game_end (board)
    (horizontal_line(board) || vertical_line(board) ||
     diagonal_line(board) || full_board(board)) ? true : false
  end
end