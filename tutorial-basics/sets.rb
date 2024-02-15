require 'set'

numbers = Set.new

numbers << 1
numbers << 2
numbers << 3
numbers << 2

puts "numbers: #{numbers}"

puts numbers.include?(1) 

# ranges
puts "#{('a'..'z').to_a}"

# numbers ranging from 1 to 10

puts "#{(1..10).to_a}"

# step method

puts "#{(1..10).step(2).to_a}"

# Iterate over a range of numbers from 1 to 10
(1..10).each { |number| puts number }

random_number = rand(1..10)
puts "#{random_number}"

# Data serialization

# csv and json

# require 'csv'


# puts CSV.read('items.csv', headers: true)
require 'json'

json_object = '{
    "pen": 300,
    "pencil": 400,
    "laptop": 600
}'

hash = JSON.parse(json_object)

puts hash

puts hash.to_json