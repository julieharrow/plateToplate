Rails.application.routes.draw do
  root 'profiles#community'
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles/:id/recipes' => 'profiles#my_recipes'
  get 'profiles/index'

  get 'interests/index'
  get 'interests/new'
  get 'interests/show'
  get 'interests/edit'

  get 'cuisines/index'
  get 'cuisines/new'
  get 'cuisines/show'
  get 'cuisines/edit'

  resources :recipes
  devise_for :users

end
