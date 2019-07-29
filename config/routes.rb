Rails.application.routes.draw do
  resources :foos, only: [:index, :show]
end
