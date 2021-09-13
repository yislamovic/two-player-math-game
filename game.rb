require "./player"
require "./game_io"
class Game
  input = Game_IO.new()
  player1 = Player.new(input.get_input(), 3)
  player2 = Player.new(input.get_input(), 3)
end