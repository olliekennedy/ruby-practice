def pick_peaks(arr)
  output = { "pos" => [], "peaks" => [] }
  arr.each_with_index do |x, i|
    if i == 0 || i == arr.length - 1
    elsif x > arr[i - 1] && x >= arr[i + 1]
      plat_index = i + 1
      peak = true
      while true do
        if arr[plat_index] == nil
          peak = false
          break
        elsif arr[plat_index] == arr[i]
          plat_index += 1
          puts "Looping"
        elsif arr[plat_index] > arr[i]
          peak = false
          break
        elsif arr[plat_index] < arr[i]
          break
        end
      end
      if peak
        output["pos"] << i
        output["peaks"] << x
      end
    end
  end
  output
end
