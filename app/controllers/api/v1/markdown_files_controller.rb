class Api::V1::MarkdownFilesController < ApplicationController
  before_action :set_markdown_file, only: %i[show update destroy]

  def index
    @markdown_files = MarkdownFile.all
    render json: MarkdownFileSerializer.new(@markdown_files).serializable_hash.to_json
  end

  # GET /markdown_files/1
  def show
    render json: MarkdownFileSerializer.new(@markdown_file).serializable_hash.to_json
  end

  # POST /markdown_files
  def create
    @markdown_file = MarkdownFile.new(markdown_file_params)
    if @markdown_file.save
      render json: MarkdownFileSerializer.new(@markdown_file).serializable_hash.to_json, status: :created
    else
      render json: @markdown_file.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /markdown_files/1
  def update
    if @markdown_file.update(markdown_file_params)
      render json: MarkdownFileSerializer.new(@markdown_file).serializable_hash.to_json, status: :ok
    else
      render json: @markdown_file.errors, status: :unprocessable_entity
    end
  end

  # DELETE /markdown_files/1
  def destroy
    @markdown_file.destroy
    head 204
  end

  private

  # Only allow a trusted parameter "white list" through.
  def markdown_file_params
    params.require(:markdown_file).permit(:name, :content)
  end

  def set_markdown_file
    @markdown_file = MarkdownFile.find(params[:id])
  end
end
