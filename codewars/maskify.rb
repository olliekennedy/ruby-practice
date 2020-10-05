def maskify(cc)
  cc.length < 5 ? cc : "#"*(cc.length - 4) + cc.slice(-4..-1)
end

puts maskify("kjhseogiueo v ig348934934g8934")
