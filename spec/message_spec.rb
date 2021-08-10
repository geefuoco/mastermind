require 'message'

describe Message do

  context "#get_input" do
    it "should return an error if input is incorrect" do
      msg = Message.new()
      expect{(msg.get_input("h "))}.to raise_error
    end

    it "should return an array when input is correct" do
      msg = Message.new()
      msg.get_input("orange grey red green")
      expect(msg.input.class).to eq(Array)
    end
  end

  
end