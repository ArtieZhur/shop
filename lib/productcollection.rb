class ProductCollection

  #первая константа для меня с хешом, в которой есть классы и назвния папок
  PRODUCT_COLLECTION = {
      book: {dir: "book", class: Book},
      game: {dir: "game", class: Game}
  }

  def initialize(products = [])
    @products = products
  end

  #берётся массив, который заимствует значения из файлов папок book и game,
  #указанных в масиве
  def self.from_dir(dir_path)
    products = []

    PRODUCT_COLLECTION.each do |type, hash|

      product_dir = hash[:dir]
      product_class = hash[:class]

      Dir[dir_path + "/" + product_dir + "/*.txt"].each do |path|
        products << product_class.from_file(path)

      end
    end

    self.new(products)
  end

  #все найденные файлы в массив
  def to_a
    @products
  end

  def sort!(params)
    case params[:by]
    when :title
      @products.sort_by! { |product| product.to_s }
    when :price
      @products.sort_by! { |product| product.price }
    when :amount
      @products.sort_by! { |product| product.amount }
    end
    self
  end

end
