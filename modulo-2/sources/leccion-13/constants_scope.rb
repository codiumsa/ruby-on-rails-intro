module Test
  PI = 3.14
  class Test2
    def what_is_pi
      puts PI
    end
  end
end
Test::Test2.new.what_is_pi
# => 3.14

module MyModule
  MyConstant = 'Constante externa'
  class MyClass
    puts MyConstant
    # => Constante externa
    MyConstant = 'Constante Interna'
    puts MyConstant
    # => Constante interna
  end
  puts MyConstant # => Constante externa
end
