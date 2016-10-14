rango = 1..3 
puts rango.max # => 3 
puts rango.include? 2 # => true 

puts (1...10) === 5.3 # => true 
puts ('a'...'r') === "r" # => false (final-exclusivo) 

p ('k'..'z').to_a.sample(2) # => ["k", "w"]
# or another random array with 2 letters in range

edad = 55 
case edad 
  when 0..12 then puts "Todavía un bebe" 
  when 13..99 then puts "Adolescente!" 
  else puts "Estás un poco viejo..." 
end 
# => Adolescente!

