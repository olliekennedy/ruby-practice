def done_or_not(board)
  regions = []
  9.times do
    regions << []
  end
  [0,3,6].each do |x|
    regions[x] += board[x].slice(0,3) + board[x+1].slice(0,3) + board[x+2].slice(0,3)
  end
  [1,4,7].each do |x|
    regions[x] += board[x-1].slice(3,3) + board[x].slice(3,3) + board[x+1].slice(3,3)
  end
  [2,5,8].each do |x|
    regions[x] += board[x-2].slice(6,3) + board[x-1].slice(6,3) + board[x].slice(6,3)
  end
  loss = "Try again!"
  test_lines = board + board.transpose + regions
  test_lines.each do |line|
    return loss if line.sort != [1,2,3,4,5,6,7,8,9]
  end
  return "Finished!"
end

puts done_or_not([       [5, 3, 4, 6, 7, 8, 9, 1, 2],
                         [6, 7, 2, 1, 9, 5, 3, 4, 8],
                         [1, 9, 8, 3, 4, 2, 5, 6, 7],
                         [8, 5, 9, 7, 6, 1, 4, 2, 3],
                         [4, 2, 6, 8, 5, 3, 7, 9, 1],
                         [7, 1, 3, 9, 2, 4, 8, 5, 6],
                         [9, 6, 1, 5, 3, 7, 2, 8, 4],
                         [2, 8, 7, 4, 1, 9, 6, 3, 5],
                         [3, 4, 5, 2, 8, 6, 1, 7, 9]])
