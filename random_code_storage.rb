

dog_walk = Todo.new("Walk the dog")
sweep = Todo.new("Sweep the patio")
hoover = Todo.new("Hoover the lounge")

main_list = TodoList.new
main_list.add(dog_walk)
main_list.add(hoover)
main_list.print


expect(fizzbuzz(9)).to eq 'fizz'
expect(fizzbuzz(12)).to eq 'fizz'
expect(fizzbuzz(18)).to eq 'fizz'
expect(fizzbuzz(21)).to eq 'fizz'
expect(fizzbuzz(24)).to eq 'fizz'
expect(fizzbuzz(27)).to eq 'fizz'
