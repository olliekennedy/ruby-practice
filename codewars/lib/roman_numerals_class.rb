class RomanNumerals
  def initialize
    @nums = {1000=>"M", 900=>"CM", 500=>"D", 400=>"CD", 100=>"C", 90=>"XC", 50=>"L", 40=>"XL", 10=>"X", 9=>"IX", 5=>"V", 4=>"IV", 1=>"I"}
  end

  def self.to_roman(integer)
    @nums = {1000=>"M", 900=>"CM", 500=>"D", 400=>"CD", 100=>"C", 90=>"XC", 50=>"L", 40=>"XL", 10=>"X", 9=>"IX", 5=>"V", 4=>"IV", 1=>"I"}
    output = ""
    @nums.each do |key, value|
      while integer >= key
        output += value
        integer -= key
      end
    end
    output
  end

  def self.from_roman(string)
    @nums = {1000=>"M", 900=>"CM", 500=>"D", 400=>"CD", 100=>"C", 90=>"XC", 50=>"L", 40=>"XL", 10=>"X", 9=>"IX", 5=>"V", 4=>"IV", 1=>"I"}
    output = 0
    chars = string.split("")
    double_chars = ["CM", "CD", "XC", "XL", "IX", "IV"]
    chunked_chars = []
    i = 0
    while i < chars.length do
      if i+1 < chars.length && double_chars.include?(chars[i] + chars[i+1])
        chunked_chars << chars[i] + chars[i+1]
        i += 2
      else
        chunked_chars << chars[i]
        i += 1
      end
    end
    @nums.each do |key, value|
      while chunked_chars[0] == value
        output += key
        chunked_chars.delete_at(0)
      end
    end
    output
  end
end

puts RomanNumerals.to_roman(1000)
