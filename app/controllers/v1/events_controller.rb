class V1::EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events, status: :ok
  end

  def show
    begin
     @event = Event.find(params[:id])
     render json: @event, status: :ok
    rescue ActiveRecord::RecordNotFound =>err
      @response = {error: "doesn't exist"}
      render 'generic/response.json.jbuilder',status: :not_found

    end
  end

  def create
    @event = Event.new(event_params)
    render json: @event, status: :created#will return 201
    if @event.save
      status = :created
      @response = @event
    else
      status = :bad_request
      @response = {error: 'event reject by database'}
    end
  end
  def destroy
    @event = Event.where(id: params[:id]).first
    if @event.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end



  private
  def event_params
    params.require(:event).permit(:title,:category,:sub_category1,:year,:month)
  end


end
# pagination rails