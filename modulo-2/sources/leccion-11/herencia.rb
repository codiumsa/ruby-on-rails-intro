class Perro
  def to_s
    "Perro"
  end
  def bark
    "Ladra fuerte"
  end
end


class PerroChico < Perro
  def bark # Override
    "Ladra despacio"
  end
end

perro = Perro.new
perro_chico = PerroChico.new
puts "#{perro}1 #{perro.bark}" # => Perro1 Ladra fuerte
puts "#{perro_chico}2 #{perro_chico.bark}" # => Perro2 Ladra despacio
