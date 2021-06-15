class RsvpsController < ApplicationController
    before_action :authorized, only:[:create]

    def index
        rsvps = Rsvp.all
        render json: rsvps
    end

    def show
        rsvp = Rsvp.find(params[:id])
        render json: rsvp
    end

    def create
        rsvp = @user.rsvps.create(rsvp_params)
        render json: rsvp
    end

    def destroy
        rsvp = Rsvp.find(params[:id])
        rsvp.destroy
        render json: rsvp
    end

    def update
        event = Rsvp.find(params[:id])
        rsvp.update(rsvp_params)
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
