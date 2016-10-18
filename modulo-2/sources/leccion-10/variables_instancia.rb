class Persona
  def initialize (nombre, edad) #CONSTRUCTOR
    @nombre = nombre
    @edad = edad
  end
  def get_info
    @informacion_adicional = "Interesante"
    "Nombre: #{@nombre}, edad: #{@edad}"
  end
  def nombre
    @nombre
  end
  def nombre=(nuevo)
    @nombre = nuevo
  end
end

persona1 = Persona.new("Juan", 14)
puts persona1.nombre # Juan
persona1.nombre = "Mike"
puts persona1.nombre # Mike
# puts persona1.age # undefined method `age' for #<Person:
