# Arrays in Ruby

superheroes = ['spider-man', 'super-man', 'goku']

puts superheroes[0]
puts superheroes[1]
puts superheroes[2]

# print first element of the array
puts superheroes.first
# print last element of the array
puts superheroes.last

# printing 1st 2 elements of the array
puts superheroes.first(2)

# printing last 2 elements of the array
puts superheroes.last(2)

superheroes.push "batman"
puts superheroes

last_hero = superheroes.pop
puts last_hero

superheroes.delete_at(1)
puts superheroes

# adds an element to the front of the array
superheroes.unshift "Thando"
puts superheroes

# removing an element from the front of the array
superheroes.shift
puts superheroes

# insert method

superheroes.insert(2, "Powers Rangers")
puts superheroes


puts "The size of the array is #{superheroes.size}"
puts "The length of the array is #{superheroes.length}"

numbers = [1,2,3,4,5]
count = numbers.count { |number| number.even? }

puts "The count of the even numbers in the array is #{count}"

# Initialize an array, we can use the square brace
# notation

# read an element (access) index notation, first, last

# append an element - push, <<, unshift
# remove an element - pop, delete_at, shift

# iterate over an array

# iterate over the superheroes array

superheroes.each { |superhero| puts superhero }

# each_with_index
superheroes.each_with_index {  |superhero, index| puts "Super heroes [#{index}: #{superhero}]"}

# each_char and the chars
some_string = "Thando is a software developer"
some_string.each_char {
    |character| puts character
}

# selecting odd numbers
puts "-------------------------"
puts numbers.select { |number| number % 2 == 1 }

some_numbers = [1,3,4,5,2,2,4,1,13,8,5]
uniques = some_numbers.uniq
puts "-------------------------"
puts uniques

puts "-------------------------"
# sample method
puts numbers.sample

# take, slice
first_three = numbers.take(3)
puts first_three

first_three = numbers[0,3]
puts first_three

puts "-------------------------"
# splat Operator in Ruby

*a, b = 1,2,3,4,5

puts "#{a}, #{b}"

# concat method
even_numbers = [2,4]
odd_numbers = [1,3]

first_four = even_numbers.concat(odd_numbers)

puts "#{first_four}"

# concat method mutates the original array as well
puts "#{even_numbers}"

# & method
puts "The common elements are: #{even_numbers & odd_numbers}"

# | Operator
puts "The union is #{even_numbers | odd_numbers}"

puts "#{numbers | some_numbers}"


# HASH TABLES

# CREATING a hash table

items = {}

items[:pen] = 2
items[:pencil] = 5
items[:laptop] = 6

puts "The quantity of pens is #{items[:pen]}"
puts "The quantity of pencils is #{items[:pencil]}"
puts "THe quantity of laptop is #{items[:laptop]}"

# iterate over the hash tables

# each

puts "Current value is #{items}"

# print each key-value pair

items.each do |key, value|
    puts "#{key}: #{value}"
end

# each_key, each_value
items.each_key do |key|
    puts "#{key}"
end

items.each_value do |value|
    puts "#{value}"
end


# keys, values
puts "#{items.keys}"
puts "#{items.values}"

puts "#{items.key?(:pencil)}"
puts "#{items.key?(:tab)}"


# exercise
given_string = "thenerdydev"

frequency_ht = {} # initialization

# iterate over the given string
given_string.each_char do |character|
    if frequency_ht.key?(character)
        frequency_ht[character] += 1
    else
        frequency_ht[character] = 1
    end
end

puts "#{frequency_ht}"

# fetch and merge methods

hash_table = { }

puts "#{hash_table[:something_random]}"

# fetch method
puts "#{hash_table.fetch(:something_random, "INVALID")}"


# merging two hash tables

# merge

user = {
    name: "Thando",
    age: 29,
    profession: "Developer"
}

new_user = user.merge({ age: 43, country: "CANADA" })

puts "Original hash table: #{user}"
puts "New hash table: #{new_user}"

# dig method
person = {
    details: {
        name: "Thando",
        gender: "Male",
        profession: "Developer",
        age: 29
    }
}

puts person.fetch(:details).fetch(:name)

puts person.dig(:details, :name)
puts person.dig(:details, :some_key)

# Transform_values
puts items

items = items.transform_values { |v| v*2 }

puts items


