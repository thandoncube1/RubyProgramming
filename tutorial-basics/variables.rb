# Local Variables
# Variables that are not accessible out a block or method

def test_method
    x = 1
    puts "Variable inside block: #{x}"
end

test_method
puts "Variable inside method: #{x}"

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