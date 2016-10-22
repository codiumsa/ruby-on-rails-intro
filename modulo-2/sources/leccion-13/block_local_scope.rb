arr = [5, 4, 1]
cur_number = 10
arr.each do |cur_number|
  some_var = 10 # No esta disponible fuera del bloque
  print cur_number.to_s + " " # => 5 4 1
end

puts cur_number # => 10

adjustment = 5
arr.each do |cur_number;adjustment|
  adjustment = 10
  print "#{cur_number + adjustment} " # => 15 14 11
end
puts
puts adjustment # => 5 (No está afectado por el bloque)
