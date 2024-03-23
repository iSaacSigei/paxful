# config/routes.rb
Rails.application.routes.draw do
  resources :clients, only: [:create]
  post '/admin/login', to: 'admin_sessions#create'
  get '/clients', to: 'clients#index' # This will be protected, only accessible for admin
end
