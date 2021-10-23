Rails.application.routes.draw do

  resources :posts do
    resources :commentts
  end
  
  get 'promo/index'
  get 'about/index'
  
  get 'admin/index'
  get 'main/index'
	get 'posts/index'

  
  root 'posts#index'
  
 
  
end
