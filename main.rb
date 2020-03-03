require './player'
require './question'

class Game 
  puts "################################"
  puts "########### RUBY MATH ##########"
  puts "################################"

  puts "Enter Player Names"
  puts "--------------------------------"
  print "Player-1 name: "
  player_1 = gets.chomp

  print "Player-2 name: "
  player_2 = gets.chomp



  p1 = Player.new(player_1)
  p2 = Player.new(player_2)
  
  player = p2
  round = 1
  while p1.lives > 0 && p2.lives > 0
    player == p2 ? player = p1 : player = p2
    if player == p1
      puts "--------------------------------"
      puts "|           Round #{round}            |"
      puts "--------------------------------"
    end

    q = Question.new
    puts "#{player.name}'s question:"
    puts q.prompt

    print "#{player.name} answer: "
    player_answer = gets.chomp.to_i
    
    puts "--------------------------------"
    if player_answer != q.answer
      player.lives -= 1
      puts "#{player.name} answered incorrect!"
    else
      puts "CORRECTAMUNDO!"
    end
    puts "--------------------------------"

    
    if player == p2 
      puts "--------------------------------"
      puts "|       Round #{round} result        |"
      puts "--------------------------------"
      puts "#{p1.name} has #{p1.lives} remaining"
      puts "#{p2.name} has #{p2.lives} remaining"
      puts "--------------------------------"
      puts "################################"

      round += 1
    end
  end

  puts "#         Game Over            #"
  puts "################################"
  if p1.lives == 0 
    puts "#{p2.name} wins!"
  elsif p2.lives == 0
    puts "#{p1.name} wins!"
  end
  puts "################################"
end






