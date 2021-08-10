require 'code'
require 'code_matcher'

describe CodeMatcher do

  context "#self.match?" do
    it "should return true when the codes match" do
      expect(CodeMatcher.match?(["hello"], ["hello"])).to eq(true)
    end
  end

  context "#self.match?" do
    it "should return false when the codes do not match" do
      expect(CodeMatcher.match?(["help"], ["hello"])).to eq(false)
    end
  end

  context "#self.color_match" do
    it "should only return 1 if all colors are the same" do
      combo = Code.new("black", "black", "black", "black")
      combo2 = Code.new("grey", "orange", "black", "purple")
      expect(CodeMatcher.color_match(combo.combination, combo2.combination)).to eq(1)
    end
  end

  context "#self.color_match" do
    it "should return 0 if no colors are the same" do
      combo = Code.new("black", "black", "black", "black")
      combo2 = Code.new("grey", "orange", "red", "purple")
      expect(CodeMatcher.color_match(combo.combination, combo2.combination)).to eq(0)
    end
  end


  context "#self.color_and_position" do
    it "should return a number of matching entries in two arrays" do
      combo = Code.new("green", "red", "blue", "blue")
      combo2 = Code.new("green", "blue", "red", "blue")
      expect(CodeMatcher.color_and_position(combo.combination, combo2.combination)).to eq(2)
    end
  end

  context "#self.color_and_position" do
    it "should return 0 if no matches" do
      combo = Code.new("green", "red", "blue", "blue")
      combo2 = Code.new("black", "black", "black", "black")
      expect(CodeMatcher.color_and_position(combo.combination, combo2.combination)).to eq(0)
    end
  end

end