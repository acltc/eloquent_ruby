########## Chapter 1 ###########

numbers = {100 => "A", 200 => "B", 300 => "C"}

# Use each with one-line syntax.
# numbers.each {|key, value| print k, " ", v, "\n"}




numbers.each do |key, value|
  if key == 100
    puts "#{value} from the key A" 
  elsif key == 300
    puts "#{value} from the key B"
  else
    puts "#{value} from the key C"
  end
end




######### Chapter 2 ##########

variable = 1

if variable != 1
  puts "This doesn't run"
end

unless variable == 1
  puts "This code doesn't run"
end

written_number = 'number_8'

arabic_number = case written_number
when 'number_5' then '5'
when 'number_8' then '8'
when 'number_9' then '9'
else puts '?'
end

puts "Arabic Number: #{arabic_number}"


booleans = [false, 0, nil, -1, "null"]

booleans.each {|boolean| puts "#{boolean.to_s} is true in ruby." if boolean}
booleans.each {|boolean| puts "#{boolean.to_s} is false in ruby." unless boolean}



#ternary operator
account = nil

#initalize if nil
account ||= "0000000000"

puts account ? "valid" : "unknown"

p account


############# Chapter 3 #######################

#optional method arguments

class Cat
  def initialize (mood="sassy")
    puts mood
  end
end

puts "My cat's default mood:"
Cat.new
puts "But thankfully, today she's"
Cat.new("purfect")




#string array shortcut
p %w{dog cat fish elephant alien?}

#splats
class Argument
  # attr_accessor :my_sample

  def initialize(*args)
    args.each { |arg| puts arg }  
  end

  def show_all_arguments (*args)
    args.each { |arg| puts arg }
  end
end

puts arguments = Argument.new("the", "endless", "splat") #splats also work for constructors!!!
p arguments.show_all_arguments("pizza", "fish", "catfish")

#bing means danger!!

numbers = [1, 2, 3, 4]

p numbers
p numbers.reverse
p numbers
p numbers.reverse!
p numbers

#hashes are ordered (ruby >= 1.9). You lied to us Jay!

dining_options = {italian: 'pizza', japanese: 'okonomiyaki', korean: 'kimbop', swedish: 'meatballs', southern: 'banana pudding'}
dining_options[:russian] = 'blinis'
dining_categories = dining_options.keys
puts "If hashes are ordered, this sentence below will always read: 'I could eat anything from pizza to blinis.'"
puts "I could eat anything from #{dining_options[dining_categories.first]} to #{dining_options[dining_categories.last]}."

#sets
girls = ["Macarena", "Tori", "Jennifer", "Madison", "Carly", "Tori"]

require 'set'
girls_dated = Set.new(girls)
puts "Johnny only has bad breakups. He never dates another girl with the same name. But he's quite the Romeo, and has dated every girl at work."
puts "Johnny has dated #{girls_dated.to_a.join(", ")}. Johnny got fired."


#Interpolation & quoted strings & and other string things
puts "\t Paragraphs need indentation. \n \t And should start on a new line."
puts %q{This is not Sam's 'best' work I'd say.}

now = Time.new
puts %Q{The time to strike is #{now}.}

puts "I absolutely hate hate hate learning new languages.".gsub("hate", "love")

"I like to read downwards.".each_char { |letter| puts letter}
"I like to read downwards like a computer.".each_byte { |letter| puts letter}


########## Chapter 4 ###########





























