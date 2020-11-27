Rails.application.routes.draw do
  resources :meetings
  resources :posts
  
  get 'mypage/show'
  
  get 'graff/show'
  
  get 'fat/show'
  
  get 'gift/show'
  #get 'meetings/index'
  root 'pages#index'
  devise_for :users
   
   #get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :users
   
   get    '/login',  to: 'sessions#new'
   post   '/login',  to:'sessions#create'
   delete '/logout', to:'sessions#destroy'
end
