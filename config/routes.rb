Rails.application.routes.draw do
  root 'welcome#home'
  # get '/about', to: 'ideas#about'
  resources :ideas
  resources :users , only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end
