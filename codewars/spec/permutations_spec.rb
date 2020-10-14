require 'permutations'

describe "#permutations" do
  it "returns 'ab', 'ba'' when given 'ab'" do
    expect(permutations("ab")).to eq ['ab', 'ba']
  end
  it "returns 'aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa' when given 'aabb'" do
    expect(permutations("aabb")).to eq ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa']
  end
end
