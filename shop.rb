require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/game'

book = Book.new(
    title: "Атомные Привычки",
    genre: 2018,
    author: "Клир Джеймс",
    price: 999,
    amount: 73
)
game = Game.new(
    title: "God of War", year: 2018, editor: "Sony", price: 1499, amount: 140
)

book.amount = 44
game.updates(price: 1099, amount: 128)

puts "У нас есть такие товары:"
puts
puts book
puts game