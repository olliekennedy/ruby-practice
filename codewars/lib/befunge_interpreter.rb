def interpret(code)
  codes = code.split("\n")
  @x_pos = 0
  @y_pos = 0
  stack = []
  output = []
  @dir = ">"
  loop do
    puts "\n\n\n#{codes[0]}\n#{codes[1]}\n#{codes[2]}\n#{codes[3]}"
    puts "cmdcmd: #{codes[@y_pos][@x_pos]}"
    case codes[@y_pos][@x_pos]
      when "@" then break
      when ">" then @dir = ">"
      when "<" then @dir = "<"
      when "^" then @dir = "^"
      when "v" then @dir = "v"
      when "0".."9" then stack << codes[@y_pos][@x_pos].to_i
      when "." then output << stack.pop
      when "," then output << stack.pop.chr
      when ":" then stack[-1].nil? ? stack << 0 : stack << stack[-1]
      when '\\'
        a = stack.pop
        b = stack.pop
        b = 0 if b.nil?
        stack << a
        stack << b
      when "+" then stack << stack.pop + stack.pop
      when "-"
        a = stack.pop
        b = stack.pop
        stack << b - a
      when "*" then stack << stack.pop * stack.pop
      when "/" then stack << stack.pop / stack.pop
      when "%" then stack << stack.pop % stack.pop
      when "!" then stack.pop == 0 ? stack << 1 : stack << 1
      when "`" then stack.pop < stack.pop ? stack << 1 : stack << 0
      when "?" then @dir = [">", "<", "^", "v"].sample
      when "_" then stack.pop == 0 ? @dir = ">" : @dir = "<"
      when "|" then stack.pop == 0 ? @dir = "v" : @dir = "^"
      when "$" then stack.pop
      when "#" then move
      when "p"
        y = stack.pop
        x = stack.pop
        v = stack.pop
        codes[y][x] = v
      when "g"
        y = stack.pop
        x = stack.pop
        output << codes[y][x].ord
      when '"'
        move
        while codes[@y_pos][@x_pos] != '"'
          stack << codes[@y_pos][@x_pos].ord
          move
        end
    end
    puts "stack : #{stack.join("")}"
    puts "output: #{output.join("")}"
    move

    #puts stack.join("")
  end
  output.join("")
end

def move
  case @dir
    when ">" then @x_pos += 1
    when "<" then @x_pos -= 1
    when "^" then @y_pos -= 1
    when "v" then @y_pos += 1
  end
end
