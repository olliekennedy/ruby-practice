require 'checkout'
require 'item'

RSpec.describe Checkout do
  describe '#scan' do
    it 'returns "Item scanned" when scanned' do
      item = Item.new(2)
      expect(subject.scan(item)).to eq "Item scanned!"
    end
  end

  describe '#total' do
    it 'returns the total of all scanned items' do
      banana = Item.new(2)
      apple = Item.new(1.5)
      pear = Item.new(2)
      subject.scan(banana)
      subject.scan(apple)
      subject.scan(pear)
      expect(subject.total).to eq 5.5
    end
  end
end
