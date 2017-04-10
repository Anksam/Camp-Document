class CampDocumentsController < ApplicationController
  before_action :set_camp_document, only: [:show, :update, :destroy]

  # GET /camp_documents
  def index
    @camp_documents = CampDocument.all

    render json: @camp_documents
  end

  # GET /camp_documents/1
  def show
    render json: @camp_document
  end

  # POST /camp_documents
  def create
    @camp_document = CampDocument.new(camp_document_params)

    if @camp_document.save
      render json: @camp_document, status: :created, location: @camp_document
    else
      render json: @camp_document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /camp_documents/1
  def update
    if @camp_document.update(camp_document_params)
      render json: @camp_document
    else
      render json: @camp_document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /camp_documents/1
  def destroy
    @camp_document.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camp_document
      @camp_document = CampDocument.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def camp_document_params
      params.require(:camp_document).permit(:title, :description, :file_url, :image_url)
    end
end
