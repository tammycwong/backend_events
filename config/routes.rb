Rails.application.routes.draw do
  get "/keep_logged_in", to: "users#keep_logged_in"

      resources :users, only:[:update, :create, :index, :show]
      resources :rsvps, only:[:index, :show, :update, :destroy, :create]
      resources :events, only:[:update, :create, :index, :show, :destroy]
      post "/login", to: "users#login"

end
