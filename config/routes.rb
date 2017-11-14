Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Create - Create a new task by filling in a form
  # get '/tasks/new', to: 'tasks#new'
  # post '/tasks', to: 'tasks#create'
  # # Read - List all tasks
  # get '/tasks', to: 'tasks#index'
  # # Show - Show an individual task
  # get '/tasks/:id', to: 'tasks#show'
  # # Update - Update and edit a current task
  # get '/tasks/:id/edit', to: 'tasks#edit'
  # patch '/tasks/:id', to: 'tasks#update'
  # # Destroy - Delete a task
  # delete '/tasks/:id', to: 'tasks#destroy'
  resources :tasks
  root to: 'tasks#index'
end
