Rails.application.routes.draw do
  get 'promo/index'
  resources :posts
  get 'admin/index'
  get 'main/index'
	get 'posts/index'

  
  root 'posts#index'
  
  resources :posts do
    resources :comments
  end
  
end
