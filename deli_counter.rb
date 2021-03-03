# Write your code here.
require 'pry'
def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  elsif katz_deli.size > 0 
    customer_line = []
    katz_deli.each_with_index do |name, index|
      customer_line << " #{index + 1}. #{name}"
    end
    puts "The line is currently:#{customer_line.join}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  elsif katz_deli.size > 0 
    katz_deli.unshift
  end
end