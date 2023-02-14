require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/game'

god_of_war = Game.new(price: 1499, amount: 140)
puts "Игра \"Game of War\" стоит: #{god_of_war.price} рублей"