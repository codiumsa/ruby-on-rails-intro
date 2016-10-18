class Persona
  attr_reader :edad
  attr_accessor :nombre

  def initialize (nombre, edadVar) # CONSTRUCTOR
    @nombre = nombre
    self.edad = edadVar # call the edad= method
    puts edad
  end
  def edad= (nueva_edad)
    @edad = nueva_edad unless nueva_edad > 120
  end
end

persona1 = Persona.new("Kim", 130) # => 13
puts "Mi edad es #{persona1.edad}" # => Mi edad es 13
persona1.edad = 130 # Se intenta cambiar la edad
puts persona1.edad # => 13 (El seter no aplicó el cambio)
