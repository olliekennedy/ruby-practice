def snail(arr)
  snail = []
  x = 0
  y = 0
  width = arr.length - 1
  snail << arr[y][x]
  circle_end = 0

  while true do
      while x < width - circle_end
        x += 1
        snail << arr[y][x]
      end
      while y < width - circle_end
        y += 1
        snail << arr[y][x]
      end
      while x > circle_end
        x -= 1
        snail << arr[y][x]
      end
      while y > circle_end + 1
        y -= 1
        snail << arr[y][x]
      end
    circle_end += 1
    break if circle_end == 20
  end
  snail
end

puts snail([[1,2,3],
            [4,5,6],
            [7,8,9]])



#snail << arr[0][0]
#snail << arr[0][1]
#snail << arr[0][2]
#snail << arr[1][2]
#snail << arr[2][2]
#snail << arr[2][1]
#snail << arr[2][0]
#snail << arr[1][0]
#snail << arr[1][1]
