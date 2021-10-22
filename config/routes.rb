Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end
  
  get 'promo/index'
  
  get 'admin/index'
  get 'main/index'
	get 'posts/index'

  
  root 'posts#index'
  
 
  
end
