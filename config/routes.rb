Rails.application.routes.draw do
  resources :forums, only: [:index, :show]
  root to: 'forums#index'
end
