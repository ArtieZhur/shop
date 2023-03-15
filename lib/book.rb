class Book < Product

  attr_reader :title, :genre, :author

  def initialize(params)
    super
    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def info
    puts "Книга: \"#{@title}\", #{@genre}, #{@author}, #{super}"
  end

end