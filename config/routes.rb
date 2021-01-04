Rails.application.routes.draw do
  get 'users/index'
  devise_for :users
  resources :articles do
    resources :comments
  end
  root 'users#index'
  get '/articles/new'
  post '/articles/create'
  patch 'articles/update'
  get 'articles/edit'
  put 'artcles/update'
  get 'articles/show'
  delete 'articles/destroy'
  get 'articles/index'
end
