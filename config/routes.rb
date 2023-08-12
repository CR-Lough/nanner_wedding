Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
  # Other routes may be defined here
  root 'posts#index' # this action, index, has the corresponding view which will now show
end
