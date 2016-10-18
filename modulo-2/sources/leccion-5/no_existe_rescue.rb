begin
  File.foreach( 'no_existe.txt' ) do |line|   
    puts line.chomp 
  end

rescue Exception => e
  puts e.message
  puts "Pretendamos que esto no pasó..."
end

