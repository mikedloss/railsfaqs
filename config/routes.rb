Rails.application.routes.draw do
  resources :forums, only: [:index, :show, :new, :create]
  resources :posts, only: [:show, :new, :create], path: '/forums/:forum_id/'
  
  root to: 'forums#index'
end
