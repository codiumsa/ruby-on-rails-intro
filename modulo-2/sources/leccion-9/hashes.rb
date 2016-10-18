props_editor = { "font" => "Arial", "size" => 12, "color" => "red"} 
# THE ABOVE IS NOT A BLOCK - IT'S A HASH 
puts props_editor.length # => 3 
puts props_editor["font"] # => Arial 

props_editor["background"] = "Blue" 
props_editor.each_pair do |key, value| 
  puts "Key: #{key} value: #{value}" 
end
# => Key: font value: Arial 
# => Key: size value: 12 
# => Key: color value: red 
# => Key: background value: Blue


