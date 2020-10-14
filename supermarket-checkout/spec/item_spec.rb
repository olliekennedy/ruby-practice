require 'item'

RSpec.describe Item do

  describe '#price' do
    it 'returns the price of the item' do
      item = Item.new(2)
      expect(item.price).to eq 2
    end
  end

end
