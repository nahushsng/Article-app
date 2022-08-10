Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  
  # Defines the root path route ("/")
  root to: "articles#index"
end
