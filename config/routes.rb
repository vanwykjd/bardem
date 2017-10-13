Rails.application.routes.draw do

  devise_for :accounts, controllers: { 
      confirmations: 'accounts/confirmations'
  }  
  
  devise_for :users, controllers: { 
      registrations: 'users/registrations' 
  }  
  
  get 'guest/index'
  
  root 'guest#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
