class Body
  def balanced_parens(n)
    return [""] if n == 0
    all = ([-1,1]*n).permutation.to_a
    valid_perms = []
    all.each do |perm|
      cnt = 0
      perm.each do |x|
        cnt += x.to_i
        break if cnt == -1
      end
      valid_perms << perm if cnt == 0
    end
    valid_perms.uniq!
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
