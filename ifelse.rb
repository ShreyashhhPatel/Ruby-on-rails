food = "pizza"

if food == "pizza"
  puts "You like pizza."
end

name = "Shrey Patel"
if name == "Shrey Patel"
  puts "I'm Shrey"
end
puts "hello" == "hi"
puts "4" === 4
puts 2 == 2.0
puts "Morning" == "Morning"
puts (1..5) === 3
puts /tar/ === "Guitar"
puts Integer === 4

sports = "basketball"

if sports == "basketball"
    puts "You like basketball"
end

score = 63

if score > 80
  puts "You got A grade."
elsif score > 60
  puts "You got B grade"
else
  puts "You did not get A grade. Good luck next time."
end

number = 8
if number < 10
  puts "Number is less than 10"
end

number = 8 
puts "Number is less than 10" if number < 10

age = 22
can_vote =  if age > 10
              "yes"
            else
              "no"
            end

puts can_vote

can_vote = age > 18 ? "yes" : "no"
puts can_vote

name = "mary"
len = name.length > 4 ? "Long name" : "Short name"
puts len