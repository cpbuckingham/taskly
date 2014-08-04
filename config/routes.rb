Rails.application.routes.draw do
  root "task_lists#index"
  get "about" => "sessions#about"
  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

end
