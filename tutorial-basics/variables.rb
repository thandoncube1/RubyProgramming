# Local Variables
# Variables that are not accessible out a block or method

def test_method
    x = 1
    puts "Variable inside block: #{x}"
end

test_method
# puts "Variable inside method: #{x}"

=begin
undefined local variable or method `x' for main:Object (NameError)
Variable inside block: 1
=end

# Instance Variables

=begin
Instance Variables start with the @ symbol and are accessible across
different methods within the instance. They persist as long as the
object instance exists.
=end

class User
    def initialize(first_name:, last_name:)
        # Define instance variables
        @first_name = first_name
        @last_name = last_name
    end

    def full_name
        # You can use your instance variables here
        @first_name + " " + @last_name
    end
end

# Initialize user
user = User.new(first_name: "John", last_name: "Doe")

# Return full name
user.full_name # => "John Doe"

# Class Variables
=begin
Class variables begin with a double @@ symbol and are shared among
all instances of a class and its subclasses. They retain their values
across different objects of the same class
=end

class Animal
    # Total number of existing animals
    @@total = 0

    # Add one more animal when a new instance is created
    def initialize
        @@total += 1
    end

    def self.total
        @@total
    end
end

puts Animal.total # => 0
Animal.new
puts Animal.total # => 1
Animal.new
puts Animal.total # => 2

=begin
As mentioned above or before it's shared across subclasses too.
=end

# Define Dog class
class Dog < Animal; end

# Create 2 dog instances
Dog.new
Dog.new
puts Animal.total # => 4

# Global variables
=begin
Global variables start with a dollar sign $ and can be accessed
from anywhere within the program. They should be used sparingly due to their global scope, which can lead to unintended side effects and make code harder to maintain.
=end

# Arithmetics class with global pi number
class Arithmetic
    $pi = 3.14
end

# We have access to pi outside the class
puts $pi # => 3.14
# Circle class that calculates the area of a circle
class Circle
    def initialize(radius:)
        @radius = radius
    end

    def area
        # We have access to pi here
        $pi * @radius ** 2
    end
end

circle = Circle.new(radius: 3)
puts circle.area # => 28.26

# Constants

=begin
This is a special type of variable in Ruby. Constants must start with
a capital letter by convention written in ALL_CAPS. Although, it is a constant  its value can be changed but will throw a warning to let you know that
you are trying to change the value of a Constant.
=end

class Cat
    LEGS = 4
end

puts Cat::LEGS # => 4

# Constants are also inherited from the parent class.
class Foxy < Cat; end

puts Foxy::LEGS # => 4

# Same concept also with modules:

module Human
    LEGS = 2
end

puts Human::LEGS # => 2

# When you define a constant iside a method Ruby raises a 
# syntax error.

def spider_legs
    LEGS = 8
end # => Dynamic constant assignment (SyntaxError)

# However you can still use it in the global context
LEGS = 99
puts LEGS # => 99

=begin
As mentioned before constants can be changed without raising
an error, but still Ruby keeps an eye on us and informs us by
desplaying a warning.
=end

LEGS = 98 # => warning: already initialized constant LEGS
          # => warning: previous definition of Legs was here