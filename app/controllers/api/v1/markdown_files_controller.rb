class Api::V1::MarkdownFilesController < ApplicationController
  # GET /mardown_files/1
  def show
    render json: MarkdownFile.find(params[:id])
  end
end
