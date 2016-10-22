class Persona
  attr_reader :edad
  attr_accessor :nombre

  def initialize (nombre, edad) # CONSTRUCTOR
    @nombre = nombre
    self.edad = edad # llama al metodo edad=
  end
  def edad= (new_edad)
    @edad ||= 5 # default
    @edad = new_edad unless new_edad > 120
  end
end
persona1 = Persona.new("Karen", 130)
puts persona1.edad # => 5 (default)
persona1.edad = 10 # Cambiar a 10
puts persona1.edad # => 10
persona1.edad = 200 # Tratar de cambiar a 200
puts persona1.edad # => 10 (Se mantiene el valor)
