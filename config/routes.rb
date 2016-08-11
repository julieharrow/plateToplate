Rails.application.routes.draw do
  root 'profiles#community'
  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles/:id/recipes' => 'profiles#my_recipes'
  get 'profiles/index'

  get 'interests/index' => "interests#index", as: :interests
  get 'interests/new_learn'
  get 'interests/new_teach'
  get 'interests/show'
  get 'interests/edit'

  get 'cuisines/index'
  get 'cuisines/new'
  get 'cuisines/show'
  get 'cuisines/edit'

  resources :recipes
  devise_for :users, controllers:{registrations: 'users/registrations'}

end
