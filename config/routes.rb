Rails.application.routes.draw do
  root "task_lists#index"
  get "about" => "sessions#about"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout
  get "task_lists/new" => "task_lists#new"
  post "task_lists" => "task_lists#create"
  get "task_lists/:id/edit" => "task_lists#edit"
  patch "task_lists/:id" => "task_lists#update"
  get "task_lists/:id/tasks/new" => "tasks#new"
  post "task" => "tasks#create"
  get "task/:id/edit" => "tasks#edit"
  patch "task/:id" => "task#update"
end
