require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Harry", last_name: "Potter", hourly_rate: 100)
@store1.employees.create(first_name: "Ron", last_name: "Weasley", hourly_rate: 60)
@store1.employees.create(first_name: "Cedric", last_name: "Diggory", hourly_rate: 65)
@store2.employees.create(first_name: "Hermione", last_name: "Granger", hourly_rate: 90)
@store4.employees.create(first_name: "Draco", last_name: "Malfoy", hourly_rate: 80)
@store4.employees.create(first_name: "Ginny", last_name: "Weasley", hourly_rate: 50)
@store5.employees.create(first_name: "Luna", last_name: "Lovegood", hourly_rate: 50)
@store5.employees.create(first_name: "George", last_name: "Weasley", hourly_rate: 70)
@store6.employees.create(first_name: "Fred", last_name: "Weasley", hourly_rate: 70)