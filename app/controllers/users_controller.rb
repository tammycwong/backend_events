class UsersController < ApplicationController
    before_action :authorized, only: [:keep_logged_in]
    
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
    end

    def create
      user = User.new(user_params)
      if user.valid?
        user.save
        render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
      else
        render json: {error: "Not able to create user"}
      end
    end

    def login
      user = User.find_by(username: params[:username])

      if user && user.authenticate(params[:password])
        render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
      else
        render json: {message: "wrong username or password"}, status: 422
      end
    end

    def keep_logged_in
      render json: {user: UserSerializer.new(@user), token: encode_token({user_id: @user.id})}
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      render json: @user
    end

    def auto_login
      render json: user
    end

    def destroy
    end
    
      private
      def user_params
        params.permit(:username, :password, :interests, :image, :name, :age, :location)
      end

      def set_user
        user = User.find(params[:id])
      end
end
