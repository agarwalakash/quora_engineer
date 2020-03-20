Rails.application.routes.draw do
  # get 'answers/index'

  # get 'answers/create'

  # get 'answers/show'

  # get 'answers/new'

  # get 'questions/new'

  # get 'questions/index'

  # get 'questions/create'

  # get 'questions/show'

  root	to: 'home#index'

  # get 'topic/create'

  # get 'topic/show'

  # get 'topic/index'

  resources :topic
  resources :questions
  resources :answers

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
