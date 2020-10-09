def max_sequence(arr)
  max_array = [arr[0]]
  arr.each_with_index do |x, big_index|
    current_arr = arr.slice(big_index, arr.length + 1)
    current_arr.each_with_index do |y, index|
      max_array = current_arr.slice(0, index + 1) if sum_arr(current_arr.slice(0, index + 1)) > sum_arr(max_array)
    end
  end
  sum_arr(max_array) > 0 ? sum_arr(max_array) : 0
end

def sum_arr(array)
  sum = 0
  array.each do |x|
    sum += x if !x.nil?
  end
  sum
end

#puts max_sequence([10,-3,-6,1,3,2,1])

puts max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4])
