class RsvpsController < ApplicationController

    def index
        rsvps = Rsvp.all
        render json: rsvps
    end

    def show
        rsvp = Rsvp.find(params[:id])
        render json: rsvp
    end

    private
    def set_rsvp
        rsvp = Rsvp.find(params[:id])
    end

    def rsvp_params
        params.permit(:user_id, event_id, :status)
    end

end
