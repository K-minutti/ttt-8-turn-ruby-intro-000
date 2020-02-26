
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# validmove? methods
def on_board?(index_num)
  if  index_num.between?(0,8) == true
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end
end

#position_take method for use as helper method
def position_taken?(board, index)
 if (board[index] ==  " " || board[index] == "" || board[index] == nil)
  false
 else
  true
 end
end

# move method

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
end

# Asking the user for their move by position 1-9.
# Receiving the user input.
# Convert position to an index.
# If the move is valid, make the move and display the board to the user.
# If the move is invalid, ask for a new move until a valid move is received.
# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end
