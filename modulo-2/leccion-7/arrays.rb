array_hetero = [1, "dos", :tres] # datos heterogeneos
puts array_hetero[1] # => dos (los indices empiezan en 0) 

arr_palabras = %w{ que lindo dia es hoy! } 
puts arr_palabras[-2] # => es
puts "#{arr_palabras.first} - #{arr_palabras.last}" # => que - hoy!
p arr_palabras[-3, 2] # => ["dia", "es"]
#(volver atrás 3 y tomar 2 posiciones) 

# (Se explica el tipo de datos range en otra clase...)
p arr_palabras[2..4] # => ["dia", "es", "hoy!"]

# Obtener un String separado por ‘,’ del array
puts arr_palabras.join(',') # => que,lindo,dia,es,hoy!


