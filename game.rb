require './player'
require './question'

puts "--------------------------------"
puts "Lets play a math game!"
puts "--------------------------------"

puts "Enter Player Names"
print "Player-1 name: "
player_1 = gets.chomp

print "Player-2 name: "
player_2 = gets.chomp



p1 = Player.new(player_1)
p2 = Player.new(player_2)

while p1.lives > 0 && p2.lives > 0
  puts "----------- New Turn -----------"
  q1 = Question.new
  puts "#{p1.name}'s question:"
  puts q1.prompt

  print "#{player_1} answer: "
  p1_answer = gets.chomp.to_i
  puts "--------------------------------"

  q2 = Question.new
  puts "#{p2.name}'s question:"
  puts q2.prompt 

  print "#{player_2} answer: "
  p2_answer = gets.chomp.to_i
  puts "------- Question Result --------"

  if p1_answer != q1.answer
    p1.lives -= 1
    puts "#{p1.name} answered incorrect"
  elsif p2_answer != q2.answer
    p2.lives -= 1
    puts "#{p2.name} answered incorrect"
  else 
    puts "Both players answered correctly"
  end
  
  puts "------------ Score -------------"
  puts "#{p1.name} has #{p1.lives} remaining"
  puts "#{p2.name} has #{p2.lives} remaining"
  puts "--------------------------------"

end


if p1.lives = 0 
  puts "#{p2.name} wins!"
elsif p2.lives = 0
  puts "#{p1.name} wins!"
end
puts "--------------------------------"





