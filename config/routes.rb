Rails.application.routes.draw do
  get 'events/index'

  get 'events/new'

  get 'events/show'

  get 'events/edit'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

	root 'application#home'
end
