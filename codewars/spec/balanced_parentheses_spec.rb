require 'balanced_parentheses'

RSpec.describe Body do
  describe '#balanced_parens' do
    # it 'returns correct for 3' do
    #   expect(subject.balanced_parens(3)).to eq ["((()))","(()())","(())()","()(())", "()()()"]
    # end
    # it 'returns correct for 2' do
    #   expect(subject.balanced_parens(2)).to eq ["()()","(())"].sort
    # end
    it 'returns 5' do
      subject.balanced_parens(5)
    end
  end
end

# balanced_parens(0) => [""]
# balanced_parens(1) => ["()"]
# balanced_parens(2) => ["()()","(())"]
# balanced_parens(3) => ["()()()","(())()","()(())","(()())","((()))"]
