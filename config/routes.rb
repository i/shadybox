ShadyBox::Application.routes.draw do
  # Homepage
  root "home#index"

  # User authenctication junk
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  resources :sessions
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
end
