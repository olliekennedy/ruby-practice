def isPrime(num)
  return false if num < 2
  2.upto(Math.sqrt(num).floor) do |x|
    return false if num % x == 0
  end
  true
end

puts isPrime(160918235119348571376032450923456108451349237)
