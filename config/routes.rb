Rails.application.routes.draw do
  resources :commentars
  resources :artikels
  resources :kommentares
  resources :posts
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
end
