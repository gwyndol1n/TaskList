Rails.application.routes.draw do
  root 'tasks#index'
  get '/tasks', to: 'tasks#index'
  get 'tasks/create'
  get 'tasks/destroy'
  get 'tasks/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
