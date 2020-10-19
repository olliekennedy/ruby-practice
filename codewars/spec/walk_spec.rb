require 'walk'

RSpec.describe Walk do
  describe '#ten_minute_walk?' do
    it 'returns true or false' do
      expect(subject.ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to be(true).or be(false)
    end
    it 'returns true when given 10 directions' do
      expect(subject.ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])).to eq true
    end
    it 'returns false when given something other than 10 directions' do
      expect(subject.ten_minute_walk?(['w', 'e'])).to eq false
    end
    it 'returns false when given invalid directions' do
      expect(subject.ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])).to eq false
    end
    it 'returns false when given more invalid directions' do
      expect(subject.ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n'])).to eq false
    end
  end
end
