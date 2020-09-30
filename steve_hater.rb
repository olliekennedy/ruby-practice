#The user sees a greeting, which asks them to enter their name.
#The user enters their name.
#If the user's name begins with 'S', the program shouts the user's name back at them.
#If the user's name begins with any other letter, the program just says 'Hi, ' plus their name.

def i_hate_steve
  puts "Hello - what is your name?"
  user_name = gets.chomp
  return "#{user_name.upcase}!!!!!" if user_name[0].upcase == "S"
  return "Hi, #{user_name.capitalize}"
end

puts i_hate_steve
