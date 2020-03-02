require './player'
require './question'

puts "Lets play a math game"

print "Enter player-1 name: "
player_1 = gets.chomp

print "Enter player-2 name: "
player_2 = gets.chomp

p1 = Player.new(player_1)
p2 = Player.new(player_2)

q1 = Question.new
puts q1.prompt

print "#{player_1} answer: "
p1_answer = gets.chomp


