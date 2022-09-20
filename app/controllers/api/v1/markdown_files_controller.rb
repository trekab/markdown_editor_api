class Api::V1::MarkdownFilesController < ApplicationController
  # GET /markdown_files/1
  def show
    render json: MarkdownFile.find(params[:id])
  end

  # POST /markdown_files
  def create
    @markdown_file = MarkdownFile.new(markdown_file_params)
    if @markdown_file.save
      render json: @markdown_file, status: :created
    else
      render json: @markdown_file.errors, status: :unprocessable_entity
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def markdown_file_params
    params.require(:markdown_file).permit(:name, :content)
  end
end
