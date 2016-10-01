Rails.application.routes.draw do
  # Sets app homepage to Posts#index
    root 'posts#index'

  # Creates routes for Posts Controller
    resources :posts
end
