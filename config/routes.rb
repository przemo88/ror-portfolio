Rails.application.routes.draw do
  resources :pages
  root "static#index"
  get 'contact' => 'email#contact'
  resources :email, only: [:index, :new, :create]
end
