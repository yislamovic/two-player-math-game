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

    change_lives()
    puts @@player1.lives
    puts @@player2.lives
  end

  def change_lives
    @@player1.lives -= 1
  end
  
end