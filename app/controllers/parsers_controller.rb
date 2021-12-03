
class ParsersController < ApplicationController
   
  def new
    #@parsing_doc = Document.last.files.first.blob.download
    @parsing_doc = Parser.new.col_select
  end

end
