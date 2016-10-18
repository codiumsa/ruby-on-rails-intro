mi_nombre = " juan" 
puts mi_nombre.lstrip.capitalize # => Juan 
p mi_nombre # => " juan" 
mi_nombre.lstrip! # (destructivo) Elimina el espacio 
mi_nombre[0] = 'K' # Remplaza el primer caracter
puts mi_nombre # => Kuan

clase_actual = %Q{Hoy no juega Paraguay...
				 Vamos a dar la clase completa!} 

clase_actual.lines do |line| 
  line.sub! 'Paraguay', 'Argentina' 
  # remplaza 'Paraguay' por 'Argentina' 
  puts "#{line.strip}" 
end 
# => Hoy no juega Argentina...
# => Vamos a dar la clase completa!


