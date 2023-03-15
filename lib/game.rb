class Game < Product

  attr_accessor :title, :year, :editor

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @editor = params[:editor]
  end

  def to_s
    "Игра: \"#{@title}\", #{@year}, #{@editor}, #{super}"
  end

  def updates(params)
    super
    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @editor = params[:editor] if params[:editor]
  end

end