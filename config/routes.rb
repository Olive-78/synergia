Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [ :show ] do
    resources :reviews, only: [ :create ]
  end

  resources :availabilities, only: [ :update, :edit ]

  resources :meetings, only: [ :show, :index, :update ]

  resources :networks, only: [ :index ]
end
