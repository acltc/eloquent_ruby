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
p arguments.show_all_arguments("pizza", "fish", "catfish").class

























