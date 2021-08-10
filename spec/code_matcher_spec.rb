require 'code'
require 'code_matcher'

describe CodeMatcher do

  code_matcher = CodeMatcher.new

  context "#self.color_match" do
    it "should only return 1 if all colors are the same" do
      combo = Code.new("black", "black", "black", "black")
      combo2 = Code.new("grey", "orange", "black", "purple")
      expect(code_matcher.color_match(combo.combination, combo2.combination)).to eq(1)
    end
  end

  context "#self.color_match" do
    it "should return 0 if no colors are the same" do
      combo = Code.new("black", "black", "black", "black")
      combo2 = Code.new("grey", "orange", "red", "purple")
      expect(code_matcher.color_match(combo.combination, combo2.combination)).to eq(0)
    end
  end


  context "#self.color_and_position" do
    it "should return a number of matching entries in two arrays" do
      combo = Code.new("green", "red", "blue", "blue")
      combo2 = Code.new("green", "blue", "red", "blue")
      expect(code_matcher.color_and_position(combo.combination, combo2.combination)).to eq(2)
    end

    it "should return 0 if no matches" do
      combo = Code.new("green", "red", "blue", "blue")
      combo2 = Code.new("black", "black", "black", "black")
      expect(code_matcher.color_and_position(combo.combination, combo2.combination)).to eq(0)
    end

    it "should return 1 if it contains 1" do
      combo = Code.new("green", "green", "green", "green")
      combo2 = Code.new("black", "black", "green", "black")
      expect(code_matcher.color_and_position(combo.combination, combo2.combination)).to eq(1)
    end
  end

end