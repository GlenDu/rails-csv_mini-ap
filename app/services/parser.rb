require 'csv'

class Parser
 
  def col_select#(raw_data)
    raw_data = Document.last.files.first.blob.download
    #@col_names = CSV.parse(raw_data, :col_sep => ',') { |row| return row}
    CSV.parse_line(raw_data)
  end

  def testing
    var = 1+2
    return var
  end

  def parse_string
   # arr_of_arrs = CSV.parse("CSV, attached_file_select, String") { |row| row}
  end
 
end
