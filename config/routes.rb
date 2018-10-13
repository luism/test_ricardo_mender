Rails.application.routes.draw do
  devise_for :users, controllers: {login: 'sessions/new', logout: 'users/sessions#destroy'}
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'notes#index'
end
