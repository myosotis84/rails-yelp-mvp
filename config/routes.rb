Rails.application.routes.draw do
  # get 'restaurants', to: 'restaurant#index', as: :restaurants
  # post 'restaurants', to: 'restaurant#create'
  # get 'restaurants/new', to: 'restaurant#new', as: :new_restaurant
  # get 'restaurants/:id', to: 'restaurant#show', as: :restaurant

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # member do

  # end
end
