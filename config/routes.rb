Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :groups, only: [:new, :create, :show, :index] do
    resources :messages, only: [:create]
  end


end
