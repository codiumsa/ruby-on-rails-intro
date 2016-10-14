File.foreach( 'no_existe.txt' ) do |line|   
	puts line.chomp 
end
