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
  get "task_lists/:task_list_id/tasks" => "tasks#index", as: :task_list_tasks
  get "task_lists/:task_list_id/tasks/new" => "tasks#new", as: :new_task_list_task
  post "task_lists/:task_list_id/tasks" => "tasks#create"
  get "tasks/:id/edit" => "tasks#edit"
  patch "task/:id" => "tasks#update"
  delete "task_lists/:task_list_id/tasks/:id" => "tasks#destroy"
  get "task_lists/:task_list_id/tasks/:id" => "tasks#show", as: :task_list_task
  delete "task_lists/:id" => "task_lists#destroy"
  get "task_lists/:id" => "task_lists#show", as: :task_list
  # #
  # resources :task_lists do
  #   resources :tasks
  # end

end
