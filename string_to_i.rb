class StringToInteger

  def self.convert(string_to_convert)
    chars = string_to_convert.split("")
    ret_val = []
    chars.each do |char|
      case char.ord
      when (48..57)
        ret_val << char.ord % 48
      else
        return nil
      end
    end
    number_join(ret_val)
  end

  def self.number_join(number_as_array)
    number_as_number = 0
    ## 10 ** (length - index - 1)
    length = number_as_array.length
    number_as_array.each_with_index do |number, index|
      number_as_number += 10 ** (length - index - 1 ) * number
    end

    return number_as_number
  end
end

require "rspec"
RSpec.describe(StringToInteger) do
  describe ".convert" do
    [
      ["1", 1],
      ["3", 3],
      ["1a2", nil],
      ["123", 123],
      ["010", 10]
    ].each do |given, expected|
      it "converts '#{given}' to #{expected}" do
        expect(StringToInteger.convert(given)).to eq(expected)
      end
    end
  end
  describe ".number_join" do
    it "converts [1] to 1" do
      expect(StringToInteger.number_join([1])).to eq(1)
    end
    it "converts [2] to 2" do
      expect(StringToInteger.number_join([2])).to eq(2)
    end
    it "converts [2,2] to 22" do
      expect(StringToInteger.number_join([2,2])).to eq(22)
    end
  end
end
