class Game < Product

  attr_accessor :title, :year, :editor

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @editor = params[:editor]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path).map { |l| l.chomp }

    self.new(
        title: lines[0],
        year: lines[1],
        editor: lines[2],
        price: lines[3].to_i,
        amount: lines[4].to_i
    )
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