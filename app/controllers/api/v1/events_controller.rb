module Api
    module V1
      class EventsController < ApplicationController
        def index
          events = Event;
          render json: {status: 'SUCCESS',message:'loaded events', data:events},status: :ok
        end

      end
    end
end