# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  if position_taken?(board, position) == true
    false
  elsif position.between?(0,8) && position_taken?(board, position) == false
    true
  
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  elsif board[position] == "X" || "O"
    true
  end
end