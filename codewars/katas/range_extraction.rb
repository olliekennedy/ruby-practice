def solution(list_input)
  output = []
  occ = 1
  list = list_input.push(3298512039581235)
  list.each_with_index do |x, i|
    occ += 1 if x - 1 == list[i - 1]
    if occ >= 3 && x - 1 != list[i - 1]
      output.push("#{list[i - occ]}-#{list[i - 1]}")
      occ = 1
    elsif occ == 2 && x - 1 != list[i - 1]
      output.push(list[i - occ], list[i - 1])
      occ = 1
    elsif x - 1 != list[i - 1]
      output.push(list[i - 1])
      occ = 1
    end
  end
  output.drop(1).join(",")
end

puts solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7,
                8, 9, 10, 11, 14, 15, 17, 18, 19, 20])

# expected - "-6,-3-1,3-5,7-11,14,15,17-20"

#puts "Second"

#puts solution([17, 18, 19, 20])
