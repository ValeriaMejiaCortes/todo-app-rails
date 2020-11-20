Rails.application.routes.draw do
  get 'todos/index'

  resources :todos
end
