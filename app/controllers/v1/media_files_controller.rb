class V1::MediaFilesController < ApplicationController

  def index
    @media_files = MediaFile.all
    render json: @media_files, status: :ok
  end

  def show
    begin
      @media_file = MediaFile.find(params[:id])
      render json: @media_file, status: :ok
    rescue ActiveRecord::RecordNotFound =>err
      @response = {error: "doesn't exist"}
      render 'generic/response.json.jbuilder',status: :not_found

    end
  end

  def destroy
    @media_file = MediaFile.where(id: params[:id]).first
    if @media_file.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

end
