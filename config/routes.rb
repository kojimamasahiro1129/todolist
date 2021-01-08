Rails.application.routes.draw do
  get 'sessions/new'

  root "categories#index"

  get 'tasks/index'

  get 'tasks/edit'
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   get '/category', to: 'category#index'
  # post "/" => "category#create"
  # resources :categories
  resources :categories do
    resources :tasks
  end

end


