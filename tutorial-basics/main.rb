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
