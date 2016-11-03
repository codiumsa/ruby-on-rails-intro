require 'minitest/autorun' 
require 'minitest/test'
require_relative 'calculator'
class CalculatorTest < Minitest::Test
  def setup
  	@calc = Calculator.new('test')
  end

  def setup
  	@calc = Calculator.new('test')
  end

  def test_divide_by_zero
    assert_raises ZeroDivisionError do 
      @calc.divide(1, 0)
    end
  end
  def test_addition
  	assert_equal 4, @calc.add(2,2)
  end
  def test_substraction
  	assert_equal 2, @calc.substract(4,2)
  end
  def test_division
  	assert_equal 2, @calc.divide(4,2)
  end
end
