class Car
  def initialize(speed, comfort)
    @rating = speed * comfort
  end

  # No se puede setear
  # el valor de rating desde afuera
  def rating
    @rating
  end
end

puts Car.new(4, 5).rating # => 20
