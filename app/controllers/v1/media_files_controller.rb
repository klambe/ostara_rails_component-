class V1::MediaFilesController < ApplicationController

  def index
    @media_files = MediaFile.all
    render json: @media_files, status: :ok
  end
end
