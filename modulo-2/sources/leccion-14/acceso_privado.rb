class Person
  def initialize(age)
    self.age = age # LEGAL - EXCEPCION A LA REGLA
    puts my_age
    # puts self.my_age # ILEGAL
    # NO SE PUEDE USAR self o cualquier otro receiver
  end

  private
  def my_age
    @age
  end
  def age=(age)
    @age = age
  end
end

Person.new(25) # => 25
