def solution(number)
  nums = {1000=>"M", 900=>"CM", 500=>"D", 400=>"CD", 100=>"C", 90=>"XC", 50=>"L", 40=>"XL", 10=>"X", 9=>"IX", 5=>"V", 4=>"IV", 1=>"I"}
  output = ""
  nums.each do |key, value|
    while number >= key
      output += value
      number -= key
    end
  end
  output
end

puts solution(8888)
