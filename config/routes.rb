Rails.application.routes.draw do

      resources :users, only:[:create, :index, :show]
      resources :rsvps, only:[:index, :show]
      resources :events, only:[:update, :create, :index, :show, :destroy]
      post "/login", to: "users#login"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
