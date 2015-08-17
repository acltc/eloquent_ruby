### Booleans ###

# Given the following array:
  # booleans = [false, 0, nil, -1, "null"]
# write a script that checks which elements are true or false.


### Case Statements ###

# Using a ruby case statement, create a method that takes a spelled out number (for example 'two') and returns the number '2'. Do this for numbers one to five.

# Change the above case statement so it returns 'low number' if given 'one' 'two' or 'three' and high number if given 'four' or 'five'.

# Create another case statement that will tell you if what's given is a string with only numbers, or only letters, or neither any letters or numbers.

# Finally, change the case statement above using 'if', 'elsif', and 'else'.


### One Line Loops, Arrays, and Sets ###

#Convert the following ruby loop into one line:
  # fast_food_restaurants = ["Burger King", "Panera Bread", "Taco Bell", "Chipotle"]
  # fast_food_restaurants.each do |restaurant|
  #   puts restaurant
  # end

#Change the array syntax of 'fast_food_restaurants' using spaces, instead of quotation marks and commas. In other words, use '%' notation. How do you keep 'Burger King' from becoming two different elements in an array?

#Below is a bit of code that replaces all email suffixes from 'yahoo.com' to 'gmail.com'.

  # emails = ["cool@yahoo.com", "happy@yahoo.com", "dungeon_lord@yahoo.com"]
  # gmail_emails = []
  # emails.each do |email|
  #   gmail_emails << email.gsub!("yahoo.com", "gmail.com")
  # end
  # p gmail_emails

#Refactor the loop without initializing an empty array ('gmail_emails = []'). Use the 'map' method.

#Refactor again, this time using the 'map' method just on one line.

# Given this array:
  # numbers = [1, 4, 54, 47, 503, 34, 6, 7, 1043]
# Return a new array called 'even_numbers' that only contains even numbers. But do with ONLY ONE LINE OF CODE. Use the 'select' method.

# You have a list of names:
  # names = ["Macarena", "Tori", "Jennifer", "Sam", "Henry", "Sam", "Madison", "Carly", "Tori"]
# Using a 'set', create a set called 'names_no_duplicates' that doesn't contain any duplicates. Don't forget to require the 'Set' class in your script.


### Classes and Methods ###

# Create a class called 'Cat'. Add an initialize method, that will can create an instance with a default mood of 'sassy'. Then, create two instances of this class, one with the default method of 'sassy' and the other with 'curious'.

# Add a custom method to your Cat class called 'print_cat_names'. Using a splat, allow this method to take any number of cat names as arguments (aka paramenters), and output all of them.

# Create class that includes a method that will remove the last character from a string.

# Create three different classes, called Person (with attributes first_name and last_name), Address (with attributes street, city, and state), and Account(when an account is created, auto generate a 10 digit randomized number). Make it so when an instance variable is created from the Account class, it takes instance variables from the Person and Address classes as parameters. In other words, do something like this:
  # new_account = Account.new(new_person, new_address)


### Regex Expressions ###

#For these exercises, build the regex expressions from scratch; do not simply google and copy the solution. Here is a decent tutorial: https://www.blueboxcloud.com/insight/blog-article/using-regular-expressions-in-ruby-part-1-of-3
# Using regular expressions, test if an email contains '.com'.

#Using regular expressions, check if a string has 'am', 'a.m'. 'pm', 'p.m.', 'PM', 'AM', 'P.M.' or 'A.M.'.

