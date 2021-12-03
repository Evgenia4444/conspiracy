Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :commentts
  end
  
  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'
  
  get 'admin/index'
  get 'main/index'
	get 'posts/index'

  
  root 'posts#index'
  
 
  
end
