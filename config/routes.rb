Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :patients
  resources :patient_carts
  resources :doctors
  resources :specializations
  resources :kliniks

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root :to => "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
