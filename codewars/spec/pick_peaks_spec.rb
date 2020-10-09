require 'pick_peaks.rb'

describe 'pick_peaks' do
  it 'should find peaks but not on the edge of the array' do
    expect(pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3])).to eq '{"pos"=>[3,7], "peaks"=>[6,3]}'
  end
  it 'should support finding peaks' do
    expect(pick_peaks([1,2,3,6,4,1,2,3,2,1])).to eq '{"pos"=>[3,7], "peaks"=>[6,3]}'
  end
  it 'should support finding peaks, but should ignore peaks on the edge of the array' do
    assert_equals(pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]), {"pos"=>[3,7], "peaks"=>[6,3]})
  end
  it 'should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau' do
    assert_equals(pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]), {"pos"=>[3,7,10], "peaks"=>[6,3,2]})
  end
  it 'should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau' do
    assert_equals(pick_peaks([2,1,3,1,2,2,2,2,1]), {"pos"=>[2,4], "peaks"=>[3,2]})
  end
  it 'should support finding peaks, but should ignore peaks on the edge of the array' do
    assert_equals(pick_peaks([2,1,3,1,2,2,2,2]), {"pos"=>[2], "peaks"=>[3]})
  end
end

describe 'fizzbuzz' do
  it 'returns "fizz" when divisible by 3' do
    [1..100].each do |x|
      expect(fizzbuzz(x)).to eq 'fizz' if x % 3 == 0 && x % 5 != 0
    end
  end
  it 'returns "fizzbuzz" when divisible by 3 and 5' do
    [1..100].each do |x|
      expect(fizzbuzz(x)).to eq 'fizzbuzz' if x % 3 == 0 && x % 5 == 0
    end
  end
  it 'returns "buzz" when divisible by 5' do
    [1..100].each do |x|
      expect(fizzbuzz(x)).to eq 'buzz' if x % 5 == 0 && x % 3 != 0
    end
  end
end
