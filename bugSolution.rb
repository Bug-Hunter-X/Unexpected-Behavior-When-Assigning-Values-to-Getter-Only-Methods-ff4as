```ruby
class MyClass
  attr_reader :value # Makes the method read-only

  def initialize(value)
    @value = value
  end

  def value=(new_value) # Add a setter method
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.value = 20 # Now this will change the object's value
puts my_object.value #=> 20

#OR Use attr_accessor to create both getter and setter
class MyClass
  attr_accessor :value
  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.value = 20 # Now this will change the object's value
puts my_object.value #=> 20
```