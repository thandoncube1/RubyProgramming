# all classes in Ruby inherit from the class 
# Object < BasicObjec

require 'json'

json_object = '{
    "pen": 300,
    "pencil": 400,
    "laptop": 600
}'

hash = JSON.parse(json_object)

puts json_object.class
puts hash.class

# methods

def greet()
    puts "Good morning"
end

greet()

def add(number_one, number_two)
    return number_one + number_one
end

result = add(1,3)
puts "The addition of 1 and 3 is #{result}"

# class

puts Array.class
puts Hash.class
puts Object.class
puts String.class

class Customer
    @@customer_count = 0

    def self.count
        @@customer_count
    end

    def initialize(id, name, age, type, gender)
        @id = id
        @name = name
        @age = age
        @type = type
        @gender = gender
        @@customer_count += 1
    end

    def display_customer_details()
        puts "Customer id: #@id"
        puts "Customer name: #@name"
        puts "Customer age: #@age"
        puts "Customer type: #@type"
        puts "Customer gender: #@gender"
    end
end

puts "Current count of customers: #{Customer.count}"
customer_one = Customer.new(1, 'Thando', 29, 'high-spender', 'male')
customer_two = Customer.new(2, 'William', 23, 'low-spender', 'male')
puts "Current count of customers after creation: #{Customer.count}"

# call methods
customer_one.display_customer_details
customer_two.display_customer_details