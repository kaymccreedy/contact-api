require "http"

system "clear"
puts "Welcome to Contacts-API"
while true
  puts "Enter a number to navigate to a page"
  puts "[0] All Contacts\n[1] First Contact\n[2] Second Contact\n[3] Third Contact\n[4] Fourth Contact\n\n[5] Exit\n\n"
  number = gets.chomp.to_i
  if number == 0
    page = "contacts"
  elsif number.between?(1,4)
    page = "contact" + number.to_s
  elsif number == 5
    puts "Bye bye!"
    break
  else
    puts "\n\nError! Page does not exist!\n\n"
  end

  response = HTTP.get("http://localhost:3000/#{page}")
  contacts = response.parse
  puts
  contacts.each do |contact|
    puts contact
  end
  puts
end
