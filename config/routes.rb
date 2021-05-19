Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # get 'restaurants', to: 'restaurants#index'
    # get 'restaurants/new', to: 'restaurant#new'
    # post 'restaurants', to: 'restaurant#create'
    # get 'restaurants/:id', to: 'restaurants#show'
    resources :restaurants do
      resources :reviews, only: [ :new, :create ]
    end

    resources :reviews, only: [:destroy]
end
