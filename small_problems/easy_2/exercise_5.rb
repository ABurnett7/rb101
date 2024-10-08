# Write a program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# Examples
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

def greeting()
  puts "What is your name?"
  name = gets.chomp

  if name.slice(-1) == '!'
    puts "HELLO #{name.slice(0..-2).upcase}. WHY ARE WE SCREAMING?"
  else 
    puts "Hello #{name}."
  end
end

greeting()

#Probably should've used include? and chop to make it smoother.  