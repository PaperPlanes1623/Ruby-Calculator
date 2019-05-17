
require 'pry'
def first_number
  puts "Enter your first Number: "
  @first_num = gets.chomp
  if @first_num =~ /[0-9]/ 
    @first_num = @first_num.to_i
else
  puts "Must Be A Number"
    first_number
end
end

def mod
  puts "Enter your modifier (+ - * or /)"
  @modifier = gets.chomp
  if @modifier =~ /[-+*\/]/
    @modifier
  
else
  puts "Must Enter An Operator (+, -, *, or /)"
    mod
end
end

def second_number
  puts "Enter second number"
  @second_num = gets.chomp
  if @second_num =~ /[0-9]/
    @second_num = @second_num.to_i
  else
    puts "Must Be A Number"
    second_number
  end
end
until @clear == 'quit'
first_number
mod 
second_number

def clear_calc
  @nums_array.clear()
end

def add(first_num, second_num)
  return @first_num + @second_num
end

def subtract(first_num, second_num)
  return @first_num - @second_num
end

def multiply(first_num, second_num)
  return @first_num * @second_num
end

def divide(first_num, second_num)
  return @first_num/@second_num
end

# binding.pry
def calculate
case @modifier
when "+"
  @final_num = add(@first_num, @second_num)
when "-"
  @final_num = subtract(@first_num, @second_num)
when "*"
  @final_num = multiply(@first_num, @second_num)
when "/"
  @final_num = divide(@first_num, @second_num)

end
end

@nums_array = Array.new()

calculate
puts "Answer is #{@final_num}"
@nums_array << @final_num
puts @nums_array

puts "Type clear to clear screen or continue to enter another operation
with the same number. Type 'quit' at any time to exit the program"
@clear = gets.chomp
if @clear == 'continue'
  @first_num = @nums_array[0]
  mod
  second_number
  calculate 
  puts "Answer is #{@final_num}"
elsif @clear == 'clear'
  clear_calc
  @final_num = 0
  first_number
  mod
  second_number
  calculate
  puts "Answer is #{@final_num}"
elsif @clear == 'quit'
  exit
end
end



























