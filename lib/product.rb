class Product

  attr_accessor :price, :amount

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def to_s
    "#{@price} руб. (осталось #{@amount})"
  end

  def updates(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
  end

end