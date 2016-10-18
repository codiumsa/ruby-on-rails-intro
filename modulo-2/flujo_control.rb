a = 5

if a==3
    puts "a es 3"
elsif a==5
    puts "a es 5"
else
    puts "a no es ni 3 ni 5"
end

unless a==6
    puts "a no es 6"
end

while a > 2
    puts "a = #{a}, es mayor a 2 todavía"
    a -= 1
end

until a>=10
    puts "a = #{a}, aún no es mayor a 10"
    a +=1
end


a = 5 
b = 0 

#if inline
puts "a es 5 y b es 0" if a == 5 and b == 0 

#While inline
times_2 = 2 
times_2 *= 2 while times_2 < 100 

puts times_2 # => 128


edad = 30

case # 1ST FLAVOR
  when edad < 40
    puts "Eres Jóven!" 
  when edad <= 35
    puts "Eres un niño"
  else 
    puts "No ingreso en ninguna opción del case!"
end 


