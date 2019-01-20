Rails.application.routes.draw do
  resources :ship_resources
  resources :resources
  resources :ships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
