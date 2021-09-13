class Game_IO
  attr_accessor :input
  def response
    puts "Hello Player #{input}"
  end
  def get_input
    @input = gets.chomp
  end  
end