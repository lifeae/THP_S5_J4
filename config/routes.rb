Rails.application.routes.draw do
  #home
  root to: 'gossips#index'

  #pages menu
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'

  #gossips
  resources :gossips do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  #users
  resources:users, only: [:create, :show]

  #cities
  resources:cities, only: [:show]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
