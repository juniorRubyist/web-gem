load 'libhosts.rb'
puts "Welcome to Web Gem!"
puts "Enter a website"
website = gets.chomp
puts "Would you like to approve or deny?"
puts "a -- approve"
puts "d -- deny"
approve = gets.chomp
approve.downcase!
switch approve
  case "a"
    # puts "Enter the IP of the website. Use an IP finder service to find (http://www.hcidata.info/host2ip.htm)"
  case "d"
    # puts "Denied!"
  else
    puts "Sorry, that wasn't a choice."
end
