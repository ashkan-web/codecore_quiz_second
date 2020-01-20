Rails.application.routes.draw do
  root 'welcome#home'
  # get '/about', to: 'ideas#about'
  resources :ideas
end
