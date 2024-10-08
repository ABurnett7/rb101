# A Simple Calculator

def prompt(message)
  puts ">> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to Calculator! Enter your name:')
name = ''

loop do
  name = gets.chomp

  if name.empty?
    prompt('Please enter a valid name')
  else
    break
  end
end

prompt("Hi, #{name}!")
loop do # main loop
  
  number1 = nil
  number2 = nil

  loop do
    prompt('Enter a number: ')
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end
  end

  loop do
    prompt('Enter another number:')
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
  MSG

  prompt(operator_prompt)
  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('Must choose 1, 2, 3, or 4')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  sleep(1)

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
          end

  prompt("The result is #{result}")

  prompt('Whould you like to perform another calculation? (Y to calculate again)')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using calculator! Good bye!')