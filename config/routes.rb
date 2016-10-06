Rails.application.routes.draw do
  resources :boots do
  	resources :topics, except: [:index, :show]
  end 
  resources :feedbacks
  resources :appointments
  resources :sessions, only: [:new, :create, :destroy]
  
  root 'welcomes#index'
end
