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



### One Line Ruby Loops ###

fast_food_restaurants = ["Burger King", "Panera Bread", "Taco Bell", "Chipotle"]
fast_food_restaurants.each {|restaurant| puts restaurant}

fast_food_restaurants = %w(Burger\ King Panera\ Bread Taco\ Bell Chipotle)
p fast_food_restaurants


emails = ["cool@yahoo.com", "happy@yahoo.com", "dungeon_lord@yahoo.com"]


gmail_emails = []

emails.each do |email|
  gmail_emails << email.gsub!("yahoo.com", "gmail.com")
end

gmail_emails = emails.map do |email| 
  email.gsub!("yahoo.com", "gmail.com")
end

gmail_emails = emails.map { |email| email.gsub!("yahoo.com", "gmail.com") }


p gmail_emails

numbers = [1, 4, 54, 47, 503, 34, 6, 7, 1043]
even_numbers = numbers.select {|number| number%2 == 0}

######### Chapter 2 ##########

variable = 1

if variable != 1
  puts "This doesn't run"
end

unless variable == 1
  puts "This code doesn't run"
end

written_number = get.chomp

arabic_number = case written_number
when 'one' then '1'
when 'two' then '2'
when 'three' then '3'
when 'four' then '4'
when 'five' then '5'
else puts '?'
end

puts "Arabic Number: #{arabic_number}"

print "Enter a string: "
some_string = gets.chomp
case
when some_string.match(/\d/)
  puts 'String has numbers'
when some_string.match(/[a-zA-Z]/)
  puts 'String has letters'
else
  puts 'String has no numbers or letters'
end


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
puts "But thankfully, today he's just"
Cat.new("curious")


class Cat
  def initialize (mood="sassy")
  end

  def print_cat_names(*args)
    args.each { |arg| puts arg }
  end
end


my_cat = Cat.new
my_cat.print_cat_names('Fluffy', 'Mittens', 'Tailspin', 'Terminator')





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
names = ["Macarena", "Tori", "Jennifer", "Sam", "Henry", "Sam", "Madison", "Carly", "Tori"]

require 'set'
names_no_duplicates = Set.new(names)
puts "Johnny only has bad breakups. He never dates another girl with the same name. But he's quite the Romeo, and has dated every girl at work."
puts "Johnny has dated #{girls_dated.to_a.join(", ")}. Johnny got fired."

########## Chapter 4 ###########

#Interpolation & quoted strings & and other string things
puts "\t Paragraphs need indentation. \n \t And should start on a new line."
puts %q{This is not Sam's 'best' work I'd say.}

now = Time.new
puts %Q{The time to strike is #{now}.}

puts "I absolutely hate hate hate learning new languages.".gsub("hate", "love")

"I like to read downwards.".each_char { |letter| puts letter}
"I like to read downwards like a computer.".each_byte { |letter| puts letter}



############## Chapter 5 ################

#Regex Expressions

/\.com/.match("acltc.com")  ### is true

puts "Enter an email address"
email_address = get.chomp
puts "That's a match" if /\.com/ =~ email_address

["12:32 pm", "11:20 AM", "01:00 p.m.", "11:59 p.m.", "23:00"].each do |time|
  if /\d\d:\d\d (PM|pm|AM|am|p\.m\.|a\.m\.)/.match(time)
    puts "#{time} is a match"
  else
    puts "#{time} is not a match"
  end
end



############### Chapter 6 ###############

#Symbols

# puts :try_changing_me.reverse (this breaks)
puts "try_changing_me".reverse #this works

############### Chapter 7 ###############

#Classes

class Example

  def print_this
    puts "This is a word".remove_last_character
  end


  def remove_last_character
    [0..-1]
  end
end

example = Example.new
example.print_this



############ Chapter 8  ##################

#Decoupling

class Person

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

end

class Address

  attr_accessor :street, :city, :state

  def initialize(street, city, state)
    @street = street
    @city = city
    @state = state
  end
end


class Account

  attr_accessor :person, :address, :account_number

  def initialize(person=nil, address=nil)
    @person = person
    @address = address
    @account_number = rand(10 ** 10)
  end

end

new_person = Person.new("Mark", "Richardson")
new_address = Address.new("1631 W. Winona Ave.", "Chicago", "IL")
new_account = Account.new(new_person, new_address)
p new_account


################# Chapter 9 ######################


#Test::Unit

require 'test/unit'

class AccountTest < Test::Unit::TestCase

  def setup
    @new_person = Person.new("John", "Doe")
    @new_account = Account.new(@new_person)
  end
  
  def test_if_account_number_is_number
    assert @new_account.account_number.is_a?(Numeric), "Account\# should be a number"
  end

  def test_if_account_has_first_name
    assert_equal @new_account.person.first_name, "John", "Created Account has first name."
  end

end


#Rspec





















