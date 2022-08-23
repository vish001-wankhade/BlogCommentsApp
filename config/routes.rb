Rails.application.routes.draw do
  root to: 'blogs#index'
  resources :blogs do
    resources :comments
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
