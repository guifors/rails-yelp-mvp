# Rails.application.routes.draw do
#   get "restaurants" => "restaurants#index"
#   get "restaurants/new" => "restaurants#new"
#   post "restaurants" => "restaurants#create"
#   get "restaurants/:id" => "restaurants#show"

# end

Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :new, :create, :show ] do
    resources :reviews, only: [ :new, :create ]
  end
end
