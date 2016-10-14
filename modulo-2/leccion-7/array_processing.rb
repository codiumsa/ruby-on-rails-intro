a = [1, 3, 4, 7, 8, 10] 

# itera sobre el array y ejecuta el bloque
# print imprime sin salto de línea
a.each { |num| print num } # => 1347810  
puts # => imprime nueva línea

nuevo_array = a.select { |num| num > 4 } 
p nuevo_array # => [7, 8, 10] 
nuevo_array = a.select { |num| num < 10 }
           .reject{ |num| num.even? } 
p nuevo_array # => [1, 3, 7] 

# Multiplicar cada elemento por 3 produciendo un nuevo array
nuevo_array = a.map {|x| x * 3} 
p nuevo_array # => [3, 9, 12, 21, 24, 30] 

