Rails.application.routes.draw do
  #home
  get '/tasks', to: "tasks#index"

  get '/tasks/new', to: "tasks#new"
  #find
  get '/tasks/:id', to: "tasks#show", as: :task

  POST '/tasks/create', to: "tasks#create"
end
