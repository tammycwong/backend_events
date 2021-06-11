class RsvpsController < ApplicationController

    def index
        rsvps = Rsvp.all
        render json: rsvps
    end

    def show
        rsvp = Rsvp.find(params[:id])
        render json: rsvp
    end
end
