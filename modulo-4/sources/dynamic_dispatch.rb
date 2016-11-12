class Dog
  def to_s
    puts "Dog"
  end
  def bark
    puts "woof, woof!"
  end
  def greet(text)
    puts text
  end
end


dog = Dog.new # (btw, new is a class method)
dog.bark        #=>woof, woof!
dog.send("bark")#=>woof, woof!
dog.send(:bark) #=>woof, woof!
method_name = :bark
dog.send method_name  #=>woof, woof!
dog.send(:greet, "hello") #=>hello
