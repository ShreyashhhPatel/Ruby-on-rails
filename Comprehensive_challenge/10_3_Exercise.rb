score = 28
if score == 100
    puts "you got A+ grade"
elsif (81...100).include? score
    puts "You got A grade"
elsif (61...81).include? score
    puts "You got B grade"
else 
    puts "You got C grade"
end