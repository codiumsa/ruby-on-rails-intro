require 'rspec'
require_relative '../calculator'

describe Calculator do
  before { @calculator = Calculator.new('RSpec calculator')}

  it "should add 2 numbers correctly" do
    expect(@calculator.add(2, 2)).to eq 4
  end

  it "should subtract 2 numbers correctly" do
    expect(@calculator.subtract(4, 2)).to eq 2
  end

  it "should sum two odd numbers and become even" do
    expect(@calculator.add(3, 3)).to be_even
    expect(@calculator.add(3, 3)).not_to be_odd
  end

  it "debería ser algo" do
    expect(@calculator).to be_algo
  end
  it "debería tener algo" do
    expect(@calculator).not_to have_algo
  end
end
