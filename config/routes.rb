Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events do
    resources :join_requests, only: [:create, :new, :show]
  end

  resources :join_requests, only: [:delete] do
    member do
      patch "accept"
      patch "reject"
    end
  end

  get "/games", to: "join_requests#index", as: :join_requests
  # resources: default + _path, as : through join_requests to get to that page

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  resources :reviews, only: [:create, :new]
end
