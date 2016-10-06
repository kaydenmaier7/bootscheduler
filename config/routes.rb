Rails.application.routes.draw do
  resources :boots do
    resources :topics, except: [:index, :show]
    resources :feedbacks
  end 
  resources :appointments
  resources :sessions, only: [:new, :create, :destroy]
  
  root 'welcomes#index'
end
