Rails.application.routes.draw do

  root	to: 'home#index'

  resources :follows
  resources :topics do
  	resources :follows, module: :topics
  end
  resources :questions do
  	resources :follows, module: :questions
  end
  resources :answers
  # resources :follows

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
