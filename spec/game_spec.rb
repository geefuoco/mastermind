require 'game'

describe Game do

  context "#winner?" do
    it "returns true if two arrays are equal" do
      game = Game.new(1,1,1)
      expect(game.winner?(["blue", "green", "red", "purple"], ["blue", "green", "red", "purple"])).to eq(true)
    end

    it "returns false if two arrays are not equal" do
      game = Game.new(1,1,1)
      expect(game.winner?(["blue", "orange", "red", "purple"], ["blue", "green", "red", "purple"])).to eq(false)
    end
  end

end