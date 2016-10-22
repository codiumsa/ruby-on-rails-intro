class Persona
  #Persona debe tener atributos: nombre y apellido y deben ser accesibles
  #Persona debe almacenar todas sus instancias para poder hacer seguimiento
  attr_accessor :nombre, :apellido
  @@people = []

  #Inicializador de instancias
  def initialize(x,y)#Debe recibir dos parametros: nombre y apellido
    @nombre = x
    @apellido = y
    @@people << self
  end

  #La clase debe tener tener un search por apellido
  def self.search(apellido)
    @@people.select{ |element| element.apellido == apellido }
  end

  #Tener un método que retorne el nombre y el apellido de la persona.
  def to_s
    "#{nombre} #{apellido}"
  end
end
