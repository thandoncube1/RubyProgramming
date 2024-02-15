puts "Hello to Ruby Programming Language"

# variables, constants and literals

first_name = 'Thando'
last_name = 'Ncube'

# constants
PIE = 3.14
radius = 5
area = PIE * radius * radius
puts area.to_s

puts 123
puts 1_234

puts 0xff
puts 0b1011

#strings
full_name = first_name + ' ' + last_name
puts full_name

# string interpolation

puts "The full name is #{full_name}"

age = 23
puts "The age of the person is #{age}"

# <<
sentence = "A quick brown fox "
sentence << "jumps over the "
sentence << "lazy dog"

puts sentence

# Manipulation of strings

#gsub (global substitution)

puts sentence.gsub("dog", "cat")
puts sentence

# split method
words = sentence.split(' ')
puts words

# substrings
greet = "Hello world".freeze
puts greet[0..3]

puts greet[-1]

puts greet.upcase()
puts greet.downcase()
puts greet.capitalize()
puts greet.reverse()
puts greet.include? 'w'
puts greet.start_with? 'H'
puts greet.end_with? 'd'

# Immutabillity and Frozen strings

# greet[0] = ""
# puts greet.frozen?

# object_id
string_one = "tommy".freeze
string_two = "tommy".freeze
puts string_one.frozen?
puts string_one.object_id == string_two.object_id

string_one = "Thando"
puts string_one