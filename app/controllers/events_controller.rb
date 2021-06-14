class EventsController < ApplicationController
    def index
        events = Event.all
        render json: events
    end

    # def user_index
# user = user.find_by(id) .. params
# user_id.events render json: 

    def show
        event = Event.find(params[:id])
        render json: event
        
    end

    def create
        event = Event.create(events_params)
        if event.valid?
            event.save
            render json: event
        else
            render json: {message: " ", full_messages: event.errors.full_messages }
        end       
    end


    def update
        event = Event.find(params[:id])
        event.update(events_params)
        render json: event
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: event
    end

    private
    def set_event
        event = Event.find(params[:id])
    end

    def events_params
        params.require(:event).permit(:name, :price, :date, :time, :location, :user_id, :image, :description, :category)
    end
end
