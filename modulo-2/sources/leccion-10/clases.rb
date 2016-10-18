class Persona
  def initialize (nombre, edad) #CONSTRUCTOR
    @nombre = nombre
    @edad = edad
  end
  def get_info
    @informacion_adicional = "Interesante"
    "Nombre: #{@nombre}, edad: #{@edad}"
  end
end

Persona1 = Persona.new("Juan", 14)

p Persona1.instance_variables # [:@nombre, :@edad]
puts Persona1.get_info # => Nombre: Juan, edad: 14

p Persona1.instance_variables
# [:@nombre, :@edad, :@informacion_adicional]
