Rails.application.routes.draw do

  root 'profiles#community'
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles/index'

  resources :recipes
  devise_for :users

end
