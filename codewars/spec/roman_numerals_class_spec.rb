require 'roman_numerals_class'

RSpec.describe RomanNumerals do
  subject do
    RomanNumerals.new
  end

  describe "#to_roman" do
    it "returns MMMCMLXXXVI when given 3986" do
      expect(subject.to_roman(3986)).to eq "MMMCMLXXXVI"
    end

    it "returns LXXI when given 71" do
      expect(subject.to_roman(71)).to eq "LXXI"
    end
  end

  describe "#from_roman" do
    it "returns 71 when given LXXI" do
      expect(subject.from_roman("LXXI")).to eq 71
    end

    it "returns 3986 when given MMMCMLXXXVI" do
      expect(subject.from_roman("MMMCMLXXXVI")).to eq 3986
    end
  end

end
