
# Comportamiento de pila/stack (LIFO)
stack = []; stack << "uno"; stack.push ("dos") 
puts stack.pop # => dos 

# Comportamiento de cola/queue(FIFO)
cola = []; cola.push "uno"; cola.push "dos" 
puts cola.shift # => uno 

a = [5,3,4,2].sort!.reverse! 
p a # => [5,4,3,2] (modifica el array) 
p a.sample(2) # => obtiene 2 elementos aleatoriamente

a[6] = 33 
p a # => [5, 4, 3, 2, nil, nil, 33]


