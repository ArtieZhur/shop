require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/game'

current_path = File.dirname(__FILE__)
game = Game.from_file(current_path + '/data/game/01.txt')
book = Book.from_file(current_path + '/data/book/01.txt')

book.amount = 44
game.updates(price: 1099, amount: 128)

puts "У нас есть такие товары:"
puts
puts book
puts game

begin
  Product.from_file(current_path + '/data/films/01.txt') or
      Product.from_file(current_path + '/data/game/01.txt')
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
