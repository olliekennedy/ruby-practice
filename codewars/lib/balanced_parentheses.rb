class Body
  def balanced_parens(n)
    max = ('1' * n*2).to_i(2)

    permas = (0..max).map do |i|
      i.to_s(2).rjust(n).gsub(" ","0")
    end
    puts permas

    return [""] if n == 0
    sample = ([-1, 1] * (n - 1)).push(-1)
    puts "before perms"
    all = sample.permutation.to_a.uniq
    puts "after perms"
    valid_perms = []
    all.each do |perm|
      perm.unshift(1)
      cnt = 0
      perm.each do |x|
        cnt += x
        break if cnt == -1
      end
      valid_perms << perm if cnt == 0
    end
    valid_parens = []
    valid_perms.each do |perm|
      valid_paren = []
      perm.each_with_index do |x, i|
        if x == 1
          valid_paren << "("
        else
          valid_paren << ")"
        end
      end
      valid_parens << valid_paren.join("")
    end
    valid_parens.sort
  end
end
