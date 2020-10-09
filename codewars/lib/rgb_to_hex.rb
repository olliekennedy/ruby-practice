def rgb(r, g, b)
  hex_rgb = [r, g, b].map { |x| x.to_s(16) }
  hex_rgb.each_with_index do |x, index|
    hex_rgb[index] = "0" + x if x.to_i(16) <= 9
    hex_rgb[index].upcase!
  end
  hex_rgb.join("")
end

puts rgb(255,5,0)
