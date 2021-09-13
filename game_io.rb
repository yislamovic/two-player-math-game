class Game_IO
  attr_accessor :input
  def response
    puts "Hello #{input}"
  end
  def get_input
    @input = gets.chomp
    response()
  end  
end