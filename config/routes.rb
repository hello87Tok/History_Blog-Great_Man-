Rails.application.routes.draw do
  root 'articles#index'
  get 'home', to: 'welcome#home'
  get 'about', to: 'welcome#about'
  resources :articles

  resources 'users'
  namespace :admin do
   resources :users
 end

  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'welcome/home', to: 'welcome#home'
end
