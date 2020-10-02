class String
  def shoutify
    self.upcase + "!"
  end
end

puts "You what mate."
user_input = gets.chomp

puts user_input.shoutify
