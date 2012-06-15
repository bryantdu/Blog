Blog::Application.routes.draw do
  resources :users 
  resources :posts do
    resources :comments
  end

  get "home/index"

  root :to => "home#index"
end
