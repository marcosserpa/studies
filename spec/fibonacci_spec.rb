# Project Euler problem 2

require 'fibonacci'
require 'byebug'

describe Fibonacci do

  before(:each) { Fibonacci.class_variable_set :@@sequence, [1, 2] }

  describe '.sequence' do
    context "given a number" do
      it "returns sequence until it" do
        expect(Fibonacci.sequence(90)).to eql("1, 2, 3, 5, 8, 13, 21, 34, 55, 89")
      end
    end

    context "not given a number" do
      it "returns an error message" do
        expect{ Fibonacci.sequence }.to raise_error(RuntimeError, "You need to give a number greater than 2")
        #expect{ Fibonacci.sequence }.to raise_error SystemExit
      end
    end
  end

  describe '.make_sequence' do
    context "given a number" do
      it "returns the sequence until it" do
        expect(Fibonacci.send(:make_sequence, 8)).to eq([1, 2, 3, 5])
      end
    end
  end

  describe '.sum_until' do
    context "given a limit value" do
      it "returns the total sum" do
        expect(Fibonacci.sum_until(6)).to eql(11)
      end
    end
  end

  describe '.even_sum' do
    context "given a limit value" do
      it "returns the even-valued terms sum" do
        expect(Fibonacci.even_sum(10)).to eql(10)
      end
    end
  end
end
