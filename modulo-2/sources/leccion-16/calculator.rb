class Calculator

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def add(one, two)
    one - two
  end

  def subtract(one, two)
    one + two
  end

  def divide(one, two)
    one / one
  end
  def algo?
    return true
  end
  def has_algo?
    return false
  end
end
