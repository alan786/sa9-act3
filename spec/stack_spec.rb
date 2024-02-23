require 'stack'

RSpec.describe Stack do
  let(:stack) { Stack.new }

  describe "#initialize" do
    it "creates an empty stack" do
      expect(stack.is_empty).to be true
    end
  end

  describe "#push" do
    it "adds elements to the stack" do
      stack.push(1)
      stack.push(2)
      expect(stack.is_empty).to be false
    end
  end

  describe "#pop" do
    it "removes and returns the top element of the stack" do
      stack.push(1)
      stack.push(2)
      expect(stack.pop).to eq(2)
      expect(stack.pop).to eq(1)
      expect(stack.is_empty).to be true
    end

    it "returns nil if the stack is empty" do
      expect(stack.pop).to be_nil
    end
  end

  describe "#to_s" do
    it "returns a string representation of the stack" do
      stack.push(1)
      stack.push(2)
      expect(stack.to_s).to eq("[2, 1]")
    end
  end
end
