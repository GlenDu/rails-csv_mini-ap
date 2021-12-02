class Loader

  def initialize(file)
    @file = file
  end

  # return colone names:
  
  private
  
  def select_column
    @file = parser.new  
  end
    
  def parser
    @file.map(&:to_h).map do |hash|
      hash.fetch_values(*@col_choice)
    end
end
