class Persona
  attr_accessor :nombre, :edad
end

persona1 = Persona.new
p persona1.nombre # => nil
persona1.nombre = "Marcos"
persona1.edad = 15
persona1.edad = "fifteen"
puts persona1.edad # => fifteen
