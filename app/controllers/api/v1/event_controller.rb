module Api
    module V1
      class EventsController < ApplicationController
        def index
          @events = Event.order('created_at DESC');
          render json: {status: 'success',message:'loaded events', data: events},status:ok
        end

      end
    end
end