Rails.application.routes.draw do
  resources :boots 
  resources :feedbacks
  resources :appointments
  resources :sessions, only: [:new, :create, :destroy]
  
  root 'welcomes#index'
end
