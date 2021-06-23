Rails.application.routes.draw do
  resources :saves
  get "/keep_logged_in", to: "users#keep_logged_in"

      resources :users, only:[:update, :create, :index, :show]
      resources :rsvps, only:[:index, :show, :update, :destroy, :create]
      resources :events, only:[:update, :create, :index, :show, :destroy]
      resources :saves, only:[:create, :destroy, :index, :show]
      post "/login", to: "users#login"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
