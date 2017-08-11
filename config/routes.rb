Rails.application.routes.draw do
  resources :products
  root to: "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails
end
