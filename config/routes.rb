Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "doctors#index"

  resources :appointments
  resources :users
  resources :time_slots
  resources :doctors
  resources :practices
  resources :specialties


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/statistics' => 'statistics#index'



  
end
