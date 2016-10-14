File.foreach( 'test.txt' ) do |line|
  puts line
  p line
  p line.chomp # elimina el caracter \n
  p line.split # crea un array de las palabras
end
