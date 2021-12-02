class DocumentsController < ApplicationController
 
  def index
    @new_document = Document.new
  end

  def show
    @doc_show = Document.find(params[:id])
    #Document.files.attach(params[:files])
   
  end

  def new
    @document = Document.new
    render :"document/new"  
  end

  def create
    @document = Document.create(document_params)
    redirect_to document_path(@document.id)    
  end

  private

    def document_params
     params.require(:document).permit(:namefile, :description, files: [])
    end
end
