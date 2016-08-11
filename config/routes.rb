Rails.application.routes.draw do

<<<<<<< HEAD
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

=======
  get "profiles/:id" => "profiles#show", as: :profile
  get "profiles/:id/recipes" => "profiles#my_recipes"
  root 'profiles#index'
  
>>>>>>> fd54870ed6a61008f8c4811810e0ead05cd1f7c2
  resources :recipes
  devise_for :users

end
