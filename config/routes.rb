Rails.application.routes.draw do

  get 'profiles/:id' => 'profiles#show', as: :profile
  get 'profiles/:id/recipes' => 'profiles#my_recipes'
  root 'profiles#index'
  get 'profiles/community/:id/community' => 'profiles#community'

  get 'interests' => "interests#index"
  get 'interests/new' => "interests#new"
  get 'interests/:id' => "interests#show", as: :interest
  get 'interests/:id/edit' => "interests#edit", as: :edit_interest
  post 'interests' => 'interests#create'

  get 'cuisines/index'
  get 'cuisines/new'
  get 'cuisines/show'
  get 'cuisines/edit'

  resources :recipes
  devise_for :users, controllers:{registrations: 'users/registrations'}

end
