load "libhosts.rb"

puts "Welcome to Web Gem!"
puts "Enter a website"
website = gets.chomp
puts "Would you like to approve or deny?"
puts "a -- approve"
puts "d -- deny"
approve = gets.chomp
approve.downcase!
case approve
  when "a"
    puts "Enter the IP of the website. Use an IP finder service to find (http://www.hcidata.info/host2ip.htm)"
    ip = gets.chomp
    WebFilter.approve(website, ip)
    puts "Approved!"
    puts "Please consult the README or man page."
  when "d"
    WebFilter.deny(website)
    puts "Denied!"
    puts "Please consult the README or man page."
  else
    puts "Sorry, that wasn't a choice."
end
