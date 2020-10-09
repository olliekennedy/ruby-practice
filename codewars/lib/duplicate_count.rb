def duplicate_count_old(text)
  characters = text.downcase.split("")
  unique_duplicate_count = 0
  characters.each do |char|
    if characters.count(char) > 1
      unique_duplicate_count += 1
      characters.delete(char)
    end
  end
  unique_duplicate_count
end

def duplicate_count(text)
  duplicate_log = Hash.new(0)
  characters = text.downcase.each_char do |char|
    duplicate_log[char] += 1
  end
  duplicate_count = 0
  duplicate_log.each do |char, count|
    duplicate_count += 1 if count > 1
  end
  duplicate_count
end

puts duplicate_count("as;odifyaiwebgpweiufbilawebf3weifgwioefd")
