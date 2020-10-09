def disemvowel(str)
  disemvowelled_string = ""
  vowels = ["a", "e", "i", "o", "u"]
  str.each_char do |char|
    disemvowelled_string << char if vowels.include?(char.downcase) == false
  end
  disemvowelled_string
end

def simple_disemvowel(str)
  str.delete("aeiouAEIOU")
end

puts simple_disemvowel("Hello how's it going?")
