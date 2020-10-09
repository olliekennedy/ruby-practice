def dirReduc(arr)
  red_combos = [["NORTH", "SOUTH"], ["SOUTH", "NORTH"], ["EAST", "WEST"], ["WEST", "EAST"]]
  i = 0
  while i < arr.length do
    if red_combos.include?([arr[i], arr[i + 1]])
      arr.delete_at(i + 1)
      arr.delete_at(i)
      i = 0
    else
      i += 1
    end
  end
  arr
end

#puts dirReduc(["NORTH", "WEST", "SOUTH", "EAST"])

puts dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
