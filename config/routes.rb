Rails.application.routes.draw do

  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles/:id/recipes' => 'profiles#my_recipes'
  root 'profiles#index'
  get 'profiles/community/:id/community' => 'profiles#my_community'

  get 'interests/index' => "interests#index", as: :interests
  get 'interests/learn_new' => "interests#learn_new"
  get 'interests/teach_new' => "interests#teach_new"
  get 'interests/show'
  get 'interests/edit'

  get 'cuisines/index'
  get 'cuisines/new'
  get 'cuisines/show'
  get 'cuisines/edit'

  resources :recipes
  devise_for :users, controllers:{registrations: 'users/registrations'}

end
