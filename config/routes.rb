Rails.application.routes.draw do
  resources :scores
  resources :ships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: 'ships#index'

  mount ActionCable.server, at: '/cable'


end
