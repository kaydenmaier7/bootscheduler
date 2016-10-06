Rails.application.routes.draw do
  resources :boots do
  	resources :feedbacks
  	resources :appointments
  end

  resources :sessions, only: [:new, :create, :destroy]
  root 'welcomes#index'
end
