Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'feedbacks/new'

  get 'feedbacks/create'

  get 'feedbacks/edit'

  get 'feedbacks/update'

  get 'feedbacks/destroy'

  get 'feedbacks/index'

  get 'feedbacks/show'

  get 'appointments/new'

  get 'appointments/create'

  get 'appointments/edit'

  get 'appointments/update'

  get 'appointments/destroy'

  get 'appointments/index'

  get 'appointments/show'

  get 'boots/new'

  get 'boots/create'

  get 'boots/edit'

  get 'boots/udpate'

  get 'boots/destroy'

  get 'boots/index'

  get 'boots/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
