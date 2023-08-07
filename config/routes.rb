Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  resources :posts # this creates a resource called posts. a route will be auto completed

  root 'posts#index' # this action, index, has the corresponding view which will now show
  
  # Defines the root path route ("/")
  # root "articles#index"
end
