Rails.application.routes.draw do
  root 'welcome#home'
  
  resources :ideas do
    resources :reviews, only: [:create, :destroy]
  end
  # get '/about', to: 'ideas#about'
  resources :users , only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end
