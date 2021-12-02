class CsvSelectorController < ApplicationController
  before_action :set_csv_selector, only: %i[ show edit update destroy ]
  def index
    
  end

  def create
    @csv_selctor = Csv_selctor.new(csv_selector_params)
  end

  def update(csv_selector_params)
    if csv_selector.update(csv_selector_params)
      redirect_to @csv_selector, notice: "Your csv doc was selected"
    else
      render :edit, status: :unprocessable_entity
    end

  def destroy
    @csv_selector.destroy
    redirect_to posts_url, notice: "Your csv doc was succesfully destroyed"
  end

  end

  private

    def csv_selector_params
      params.require(:csv_selector).permit(files:[])
    end

end
