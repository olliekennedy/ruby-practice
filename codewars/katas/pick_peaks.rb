def pick_peaks(arr)
  output = { "pos" => [], "peaks" => [] }

  arr.each_with_index do |x, i|

    if x > arr[i - 1] && x >= arr[i + 1] && ![0, arr.length - 1].include?(i)
      output["pos"] << i
      output["peaks"] << x
    end

  end
  output
end

puts pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1])
