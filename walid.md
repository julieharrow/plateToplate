## What I changed

1. In the User model

FROM:
```ruby
def self.wants_to_learn
  where(interest.learn: true).cuisine
end

def self.wants_to_teach
  where(interest.learn: true).cuisine
end
```

TO:
```ruby
def wants_to_learn
  interests.where(learn: true)
end

def wants_to_teach
  interests.where(teach: true)
end

def my_recipes
  recipes
end
```
2. In the Profiles Controller

```ruby
def show
  @user = User.find(params[:id])
end
```

3. Interest routes in routes.rb

FROM:
```ruby
get 'interests/index' => "interests#index", as: :interests
get 'interests/new' => "interests#new"
get 'interests/show'
get 'interests/edit'
```

TO:
```ruby
get 'interests' => "interests#index"
get 'interests/new' => "interests#new"
get 'interests/:id' => "interests#show", as: :interest
get 'interests/:id/edit' => "interests#edit", as: :edit_interest
post 'interests' => 'interests#create'
```
