Rails.application.routes.draw do
  get 'collections/index'
  devise_for :users
  root 'games#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :games
  resources :user_games, only: [:create, :destroy]
  get 'collection', to: 'collections#index'
  get '/games/:id/q_and_as', to: 'games#q_and_as', as: 'game_q_and_as'

  resources :games do
    resources :comments, only: [:create, :destroy]
    resources :ratings, only: [:create]
    resources :house_rules
  end
  resources :chatrooms, param: :slug, only: [:index, :new, :create, :show, :destroy]
  resources :chatrooms do
    resources :messages
  end
  
  get '/recommendations', to: 'users#recommendations'
end

