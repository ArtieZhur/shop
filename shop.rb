require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/game'
require_relative 'lib/productcollection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + "/data")

collection.sort!(by: :amount)

collection.to_a.each do |product|
  puts product
end