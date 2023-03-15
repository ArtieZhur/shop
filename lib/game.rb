class Game < Product

  attr_reader :title, :year, :editor

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @editor = params[:editor]
  end

  def to_s
    "Игра: \"#{@title}\", #{@year}, #{@editor}, #{super}"
  end

end