def solution(remainder)
  nums = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" }
  numerals = nums[1000] * (remainder/1000).floor
  [100, 10, 1].each do |x|
    remainder = remainder % (x*10)
    case (remainder/x).floor
    when 9 then numerals += nums[x] + nums[x*10]
    when 5..8 then numerals += nums[x*5] + (nums[x] * ((remainder/x).floor - 5))
    when 4 then numerals += nums[x] + nums[x*5]
    else numerals += nums[x] * (remainder/x).floor
    end
  end
  numerals
end

puts solution(9329)
