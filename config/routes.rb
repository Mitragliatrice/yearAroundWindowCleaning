Rails.application.routes.draw do
  devise_for :users, except: [:sign_up]
  resources :quotes, except: [:show]
  get 'quotes/:id', to: 'quotes#show', as: 'quote_show'


  root to: 'pages#home'
  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
