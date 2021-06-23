class SavesController < ApplicationController
    before_action :authorized, only:[:create]

    def index
        @saves = Save.all
        render json: @save
    end

    def show
    @save = Save.find(params[:id])
        render json:@save
    end

    def create
    @save = @user.save.create(save_params)
        render json:@save
    end

    def destroy
        @save = Save.find(params[:id])
        @save.destroy
        render json: @save
    end

    def update
        event = Save.find(params[:id])
        @save.update(save_params)
        render json:@save
    end
    
    private
    def set_rsvp
    @save = Save.find(params[:id])
    end

    def save_params
        params.permit(:user_id, :event_id)
    end
end
