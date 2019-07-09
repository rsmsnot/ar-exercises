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

puts "Please enter the name of a store"
print '=>'
@user_store = gets.chomp

new_store = Store.create(name: @user_store)

new_store.valid?
errors = new_store.errors.messages

errors.each do |error, message|
    puts "#{error}= #{message.to_s}"
end