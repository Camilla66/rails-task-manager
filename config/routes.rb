Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #list tasks
  get '/tasks', to: 'tasks#index'
  #create a task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  #view details of a task
  get '/tasks/:id', to: 'tasks#show', as: :task
  #update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch '/tasks/:id', to: 'tasks#update'
end
