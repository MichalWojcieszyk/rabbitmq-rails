Rails.application.routes.draw do
  resources :posts, only: [:new, :index, :show, :create]

  root to: "posts#index" 
end
