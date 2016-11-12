class Whatever
  define_method :make_it_up do
    puts "Whatever..."
  end
end

whatever = Whatever.new
whatever.make_it_up
