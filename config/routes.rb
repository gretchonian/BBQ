Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bbq#index'
  get 'about', to: 'bbq#about'
  get 'menu', to: 'bbq#menu'
  get 'contact', to: 'bbq#contact'
  resources :rfqs, only: [:new, :create, :update, :show]
  resources :foods, only: [:update]
end
