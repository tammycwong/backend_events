class Api::V1::UsersController < ApplicationController
    # before_action :find_user, only:[:show, :update, :destroy]
    # skip_before_action :logged_In?, only: [:create, :logIn]
   
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
      user = User.new(user_params)
      if user.valid?
        user.save
        render json: user
      else
        render json: {error: "Not able to create user"}
      end
    end

    def login
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        render json: {username: user.username, token: encode_token({user_id: user.id})}
      else
        render json: {message: "wrong username or password"}, status: 422
      end
    end

    def update
    end

    def destroy
    end
    # def create
    #     @user = User.create(user_params)
    #     if @user.valid?
    #       render json: { user: UserSerializer.new(@user) }, status: :created
    #     else
    #       render json: { error: 'failed to create user' }, status: :not_acceptable
    #     end
    #   end
    
      private
      def user_params
        params.permit(:username, :password, :interests, :image, :name, :age, :location)
      end
end
