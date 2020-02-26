Rails.application.routes.draw do
  get 'reviews/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [ :show ] do
    resources :reviews, only: [ :create ]
  end

  resources :week_availabilities, only: [ :new, :create ]

  resources :meetings, only: [ :show, :index, :update ]

  resources :networks, only: [ :index ]
end
