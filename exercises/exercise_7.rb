require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
print "Enter a store name: "
@new_store = gets.chomp
@store4 = Store.create(name: @new_store)
@store4.valid?
@store4.errors.messages.each do |key, error|
  puts "Error for key: #{key}"
  puts error
end