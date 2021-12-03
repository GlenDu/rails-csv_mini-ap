class Loader

  def initialize(file)
    @file = file
  end

  # return colone names:
  
  private
      
  def parser
    parsed_file.map(&:to_h).map do |hash|
      hash.fetch_values(*@col_choice)
    end
  end
  
end
