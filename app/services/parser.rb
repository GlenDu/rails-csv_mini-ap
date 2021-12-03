require 'csv'

class Parser
  
 
  def col_select#(raw_data)
    raw_data = Document.last.files.first.blob.download
    CSV.parse(raw_data, :col_sep => ',') { |row| row}
  end

  def testing
    var = 1+2
  end

  def parse_string
   # arr_of_arrs = CSV.parse("CSV, attached_file_select, String") { |row| row}
  end
 
end
