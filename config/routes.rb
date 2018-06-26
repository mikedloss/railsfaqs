Rails.application.routes.draw do
  resources :forums, only: [:index, :show, :new, :create]
  resources :posts, only: [:show], path: '/forum/:forum_id/'
  
  root to: 'forums#index'
end
