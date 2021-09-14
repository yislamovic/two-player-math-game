require "./player"
require "./game_io"
class Game
  @@player1
  @@player2
  LIVES = 3

  def initialize()
    puts "Enter Your Name Player-1"
    input = Game_IO.new()
    @@player1 = Player.new(input.get_input(), LIVES)
    input.response()

    puts "Enter Your Name Player-2"
    input2 = Game_IO.new()
    @@player2 = Player.new(input2.get_input(), LIVES)
    input2.response()

    game_start()
  end

  def generate_question(name)
    a = Random.new.rand(1..20)
    b = Random.new.rand(1..20)
    puts "Player #{name}, What is #{a} + #{b}?"
    answer = a + b
  end  

  def player_turn1
    answer = generate_question(@@player1.name)
    input = Game_IO.new()
    input.get_input()
    if answer.to_s === input.input.to_s
      puts "Correct" 
    else
      puts "Incorrect"
      @@player1.lives -= 1
      puts "Player #{@@player1.name} has #{@@player1.lives} lives left"
    end  
    if @@player1.lives >= 1
      puts "----------New Turn----------"
      player_turn2()
    else
      puts "The winner is #{@@player2.name}"
    end  
  end  

  def player_turn2
    answer = generate_question(@@player2.name)
    input = Game_IO.new()
    input.get_input()
    if answer.to_s === input.input.to_s
      puts "Correct"  
    else
      puts "Incorrect"
      @@player2.lives -= 1
      puts "Player #{@@player2.name} has #{@@player2.lives} lives left"
    end  
    if @@player1.lives >= 1 && @@player2.lives >= 1
      puts "----------New Turn----------"
      player_turn1()
    else
      puts "The winner is #{@@player1.name}"
    end  
  end

  def game_start
    player_turn1()
  end
end