require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@totalRevenue = Store.sum(:annual_revenue)
puts "Total Revenue for all stores: #{@totalRevenue}"
puts "Average Annual Revenue for all stores: #{@totalRevenue/Store.count}"

high_profit_stores = Store.where("annual_revenue > ?", 1000000).count(:annual_revenue)
puts "Number of stores that are generating $1M or more in annual sales: #{high_profit_stores}"
