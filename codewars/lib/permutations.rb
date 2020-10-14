def permutations(string)
  perms = string.split("").permutation.uniq
  joined_perms = []
  perms.each do |x|
    joined_perms << x.join("")
  end
  joined_perms
end

#puts permutations("qxjhsdf")
