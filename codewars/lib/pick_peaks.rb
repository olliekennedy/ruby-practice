def pick_peaks(arr)
  output = { "pos" => [], "peaks" => [] }

  arr.each_with_index do |x, i|

    if x > arr[i - 1] && x >= arr[i + 1] && ![0, arr.length - 1].include?(i)
      output["peaks"] << x
      output["pos"] << i
    end

  end
  output
end
