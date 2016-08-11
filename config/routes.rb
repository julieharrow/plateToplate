Rails.application.routes.draw do

  get 'interests/index'

  get 'interests/new'

  get 'interests/show'

  get 'interests/edit'

  get 'cuisines/index'

  get 'cuisines/new'

  get 'cuisines/show'

  get 'cuisines/edit'

  root 'profiles#community'
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles/index'

  resources :recipes
  devise_for :users

end
