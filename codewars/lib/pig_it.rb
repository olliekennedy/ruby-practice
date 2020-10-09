def pig_it(text)
  words = text.split(" ")
  words.each do |x|
    if x.gsub(/[^a-z0-9\s]/i, '') == x
      x << x[0]
      x[0] = ""
      x << "ay"
    end
  end
  puts words.join(" ")
end

pig_it('Pig latin is cool !')
