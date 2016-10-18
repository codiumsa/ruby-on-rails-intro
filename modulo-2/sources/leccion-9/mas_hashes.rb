familia_simbolos = {paz: "Blanco", tristeza: "Negro", alegria: "Verde"} 
familia_simbolos[:felicidad] = "Azul" 
p familia_simbolos 
# => {:paz=>"Blanco", :tristeza=>"Negro", :alegria=>"Verde", :felicidad=>"Azul"}

# Named parameter "like" behavior... 
def ajustar_colores (props = {foreground: "red", background: "white"}) 
  puts "Foreground: #{props[:foreground]}" if props[:foreground] 
  puts "Background: #{props[:background]}" if props[:background] 
end 
ajustar_colores # => foreground: red 
              # => background: white 
ajustar_colores ({ :foreground => "green" }) # => foreground: green 
ajustar_colores background: "yella" # => background: yella 
ajustar_colores :background => "magenta" # => background: magenta
