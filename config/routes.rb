Rails.application.routes.draw do
  resources :pages
  get 'contact' => 'email#contact'
  resources :email, only: [:index, :new, :create]
end
