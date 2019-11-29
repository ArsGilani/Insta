Rails.application.routes.draw do


  resources :posts do
      resources :marks, only: [:new, :create, :destroy]
	   resources :comments
  end
  devise_scope :user do
    root to: "devise/sessions#new"
     resources :comments
    
  end
  

  devise_for :users
  resources :users do
	  	member do
	      get :following, :followers, :follow
	    end
	end

  resources :relationships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
