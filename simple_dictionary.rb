dictionary = { :bear => "a creature that fishes in the river for salmon", :river => "a body of water that contains salmon, and sometimes bears", :salmon => "a fish, sometimes in a river, sometimes in a bear, and sometimes in both"}

puts "I am a dictionary. Give me a word and I will give you the definition."
input_word = gets.chomp

puts dictionary[input_word.to_sym]
