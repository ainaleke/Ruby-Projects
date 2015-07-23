class MyClass
  def sayHello
    return "Hello from MyClass"
  end

  def sayGoodbye
    return "say Goodbye from MyClass"
  end

end

class MyOtherClass < MyClass
  def sayHello #overrides (and replaces ) MyClass.sayHello
    return "Hello from MyOtherClass"
  end

  #overrides MyClass.sayGoodbye but first calls that method
  #with super
  def sayGoodbye
    super
    return << "and MyOtherClass"
  end
end

sayme=MyOtherClass.new

puts (sayme.sayGoodbye)
#puts(`dir`)
