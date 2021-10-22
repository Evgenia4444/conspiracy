Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  
  get 'promo/index'
  resources :posts
  get 'admin/index'
  get 'main/index'
	get 'posts/index'

  
  root 'posts#index'
  
  
  
end
