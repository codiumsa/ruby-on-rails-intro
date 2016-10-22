class Matematica
  def self.doble(var) # 1. Utilizando self.
    cnt_llamadas; var * 2;
  end
  class << self # 2. Utilizando << self
    def cnt_llamadas
      @@cnt_llamadas ||= 0; @@cnt_llamadas += 1
    end
  end
end

def Matematica.triple(var) # 3. Fuera de la clase
  cnt_llamadas; var * 3
end

# No existen instancias creadas!
puts Matematica.doble 5 # => 10
puts Matematica.triple(3) # => 9
puts Matematica.cnt_llamadas # => 3
