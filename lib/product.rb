class Product

  attr_reader :price, :amount

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  def info
    puts "#{@price} руб. (осталось #{@amount})"
  end

end