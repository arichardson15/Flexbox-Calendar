Rails.application.routes.draw do
  resources :work_orders
  resources :locations

  root 'work_orders#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
