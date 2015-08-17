# emails = ["cool@yahoo.com", "happy@yahoo.com", "dungeon_lord@yahoo.com"]


# gmail_emails = []

# emails.each do |email|
#   gmail_emails << email.gsub!("yahoo.com", "gmail.com")
# end

# gmail_emails = emails.map do |email| 
#   email.gsub!("yahoo.com", "gmail.com")
# end

# gmail_emails = emails.map { |email| email.gsub!("yahoo.com", "gmail.com") }


# p gmail_emails



# puts "Enter an email address"
# email_address = gets.chomp
# puts "That's a match" if /\.com/ =~ email_address




["12:32 pm", "11:20 AM", "01:00 p.m.", "11:59 p.m.", "23:00"].each do |time|
  if /\d\d:\d\d (PM|pm|AM|am|p\.m\.|a\.m\.)/.match(time)
    puts "#{time} is a match"
  else
    puts "#{time} is not a match"
  end
end