Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"
  get "home" => "static_pages#home"
  get "help" => "static_pages#help"
  get "about"   => "static_pages#about"
  get "contact" => "static_pages#contact"

  namespace :admin do
    resources :categories
    end
end
