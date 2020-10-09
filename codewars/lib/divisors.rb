def divisors(n)
  max_test = (n / 2).floor + 1
  puts max_test
  divisors = []
  max_test.times do |potential_divisor|
    if [0, 1].include?(potential_divisor) == false && n % potential_divisor == 0
      divisors << potential_divisor
    end
  end
  divisors.length > 0 ? divisors : "#{n} is prime"
end

puts divisors(25)
