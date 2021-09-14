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

  def minus_life
    @@player1.lives -= 1
  end

  def generate_question()
    a = Random.new.rand(1..20)
    b = Random.new.rand(1..20)
    puts "What is #{a} + #{b}?"
    answer = a + b
  end  

  def game_start
    while @@player1.lives >= 1 && @@player2.lives >= 1
      generate_question()
      minus_life()
    end  
  end
end