Rails.application.routes.draw do
  resources :references
  resources :periodics
  get 'pages/info'
  get 'pages/upload_bibtex'
  post 'pages/upload_bibtex'
  get 'home/index'
  root "home#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
