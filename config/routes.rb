Rails.application.routes.draw do
  root "categories#index"

  get 'tasks/index'

  get 'tasks/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   get '/category', to: 'category#index'
  # post "/" => "category#create"
  resources :categories
  resources :categories do
    resources :tasks
  end

end
