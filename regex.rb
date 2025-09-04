regex = /\d\d\d/
word = "123"

puts "three digit word" if word =~ regex

# regex = /\d\d/

# word1 = "76PEJRT"  #=> true
# puts "word1 is a match!" if word1 =~ regex

# word2 = "TGF87SDD" #=> true
# puts "word2 is a match!" if word2 =~ regex

# word3 = "TGF9J7D"  #=> false
# puts "word3 is a match!" if word3 =~ regex

# word4 = "UHERJED"  #=> false
# puts "word4 is a match!" if word4 =~ regex

regex =/\d{3}/

sentence1 = "Where are the 99 bottles?"
puts "Sentence1 is a match!" if sentence1 =~ regex

sentence2 = "Bring me two hundred thirty three books."
puts "Sentence2 is a match!" if sentence2 =~ regex

sentence3 = "Please call me MysteryKid985"
puts "Sentence3 is a match!" if sentence3 =~ regex

sentence4 = "007, James 007"
puts "Sentence4 is a match!" if sentence4 =~ regex

sentence5 = "123456789 is one of the most overused passwords."
puts "Sentence5 is a match!" if sentence5 =~ regex