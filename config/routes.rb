Rails.application.routes.draw do
  resources :pages
  resources :static
  root "static#index"
  get 'index' =>'static#index'
  get 'contact' => 'email#contact'
  resources :email, only: [:index, :new, :create]
end
