require_relative "lib/player"
require_relative "lib/tachikoma"
require_relative "lib/rps"

module Jankenpon

  def self.play
    puts "How many players, 1 or 2?"


    input = gets.chomp.to_i
    if input == 1
      game = RPS.new(1)
      game.play
    elsif input == 2
      game = RPS.new(2)
      game.play
    else
      puts "Invalid number of players! Try again."
    end
  end
end
