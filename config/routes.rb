ShadyBox::Application.routes.draw do
  get "sign_up" => "users#new", :as => "sign_up"
  root "users#new"
  resources :users
end
