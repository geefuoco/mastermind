require 'code'

describe Code do

  context "#initialize" do
    it "returns a code object with 4 colors in the combination array" do
      combo = Code.new("white", "black", "green", "red")
      expect(combo.combination).to eq( ["white", "black", "green", "red"] )
    end
  end


  context "#generate_combination" do
    it "returns a randomized combination of colors when called" do
      combo = Code.generate_combination
      expect(combo.combination.length).to eq(4)
    end
  end

  context "#generate_combination" do
    it "returns a randomized combination of colors when called" do
      combo = Code.generate_combination
      combo2 = Code.generate_combination
      expect(combo.combination == combo2.combination).to eq(false)
    end
  end

end