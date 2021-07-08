Rails.application.routes.draw do
  get 'kcals/new'

  #get 'chart_sample/index'

  resources :meetings
  resources :posts
  resources :graff
  resources :kcals
  #4devise_for :kcal
  
  get 'mypage/show'
  
  get 'graff/show'
  
  get 'fat/show'
  
  get 'kcals/index'
  
  #get 'kcals/new'
  
  #post 'meetings'
  
  get 'gift/show'
 
  get 'meetings/index'
  
  root 'pages#index'
  devise_for :users
   
   #get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :users
   
   get    '/login',  to: 'sessions#new'
   post   '/login',  to:'sessions#create'
   delete '/logout', to:'sessions#destroy'
end
