variable = "false"
otra_variable = "nil"

if variable == "Algún texto"
  puts "No es igual a Algún texto"

elsif otra_variable.nil?
  puts "otra_variable es nil!"

elsif variable == false
  puts "Al parecer esto es lo que se debe ejecutar!"

else
  puts "Nada se ejecutó? Por que?"
end
