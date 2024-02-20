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

