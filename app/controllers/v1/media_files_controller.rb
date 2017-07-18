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

  def create
    @event = Event.find(params[:Event_id])
    @media_file = MediaFile.new(media_file_params)
    if @media_file.save
      status = :created
      @response = @media_file
    else
      status = :bad_request
      @response = {error: 'media reject by database'}
    end
  end


  private
  def media_file_params
    params.require(:media_file).permit(:approval, :flagged, :Event_id,:s3_location,:filename)
  end


end
