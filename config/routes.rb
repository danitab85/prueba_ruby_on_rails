Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/list'
  get 'todos/:id', to: 'todos#show'
  get 'todos/:id/edit', as: 'edit_todo', to: 'todos#edit'
  patch 'todos/:id', to: 'todos#update', as: 'todo'
  delete 'todos/:id', to: 'todos#destroy'
  get 'todos/:id/complete', as: 'complete_todo', to: 'todos#complete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
