Rails.application.routes.draw do
  root 'home#index'

    resources :users
    resources  :restuarant
    resources :fooditems
    resources :reviews
    resources :medias
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
