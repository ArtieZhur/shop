require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/game'

products = []

products << Book.new(
    title: "Атомные Привычки",
    genre: 2018,
    author: "Клир Джеймс",
    price: 999,
    amount: 73
)
products << Game.new(
    title: "God of War", year: 2018, editor: "Sony", price: 1499, amount: 140
)

puts "У нас есть такие товары:"
products.each { |product| puts product }