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