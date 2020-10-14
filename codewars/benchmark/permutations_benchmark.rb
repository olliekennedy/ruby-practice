require 'benchmark'

#input = ('a'..'z').map { |letter| [letter, letter] }.to_h
puts "uniq:"
puts Benchmark.measure {
  def permutations(string)
    chars = string.split("")
    output = [string]
    start_str = ""
    limit_str = ""
    chars.length.times do
      start_str += "1"
      limit_str += chars.length.to_s
    end
    range = [*start_str.to_i..limit_str.to_i]
    range.delete_if {|num| [*"1"..string.length.to_s] != num.to_s.split("").sort}
    range.each do |num|
      num_chars = num.to_s.split("")
      test_perm = ""
      num_chars.each do |x|
        test_perm << chars[x.to_i - 1]
      end
      output << test_perm
      #if !(output.include?(test_perm))
      #  output << test_perm
      #end
    end
    output.uniq
  end

  permutations("qxbutk")
}

puts "include:"
puts Benchmark.measure {
  def permutations(string)
    chars = string.split("")
    output = [string]
    start_str = ""
    limit_str = ""
    chars.length.times do
      start_str += "1"
      limit_str += chars.length.to_s
    end
    range = [*start_str.to_i..limit_str.to_i]
    range.delete_if {|num| [*"1"..string.length.to_s] != num.to_s.split("").sort}
    range.each do |num|
      num_chars = num.to_s.split("")
      test_perm = ""
      num_chars.each do |x|
        test_perm << chars[x.to_i - 1]
      end
      #output << test_perm
      if !(output.include?(test_perm))
        output << test_perm
      end
    end
    output#.uniq
  end

  permutations("qxbutk")
}

puts "instantiated first"
puts Benchmark.measure {
  def permutations(string)
    chars = string.split("")
    output = [string]
    start_str = ""
    limit_str = ""
    chars.length.times do
      start_str += "1"
      limit_str += chars.length.to_s
    end
    range = [*start_str.to_i..limit_str.to_i]
    first = [*"1"..string.length.to_s]
    range.delete_if {|num| first != num.to_s.split("").sort}
    range.each do |num|
      num_chars = num.to_s.split("")
      test_perm = ""
      num_chars.each do |x|
        test_perm << chars[x.to_i - 1]
      end
      output << test_perm
    end
    output.uniq
  end

  permutations("qxbutk")
}
