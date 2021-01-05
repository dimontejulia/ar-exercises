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
puts "Please enter the store name: "
@storeName = gets.chomp

@newStore = Store.create(name: @storeName)

if @new_store
  puts "store #{@storeName}created successfully"
else
  puts @newStore.errors.full_messages
end