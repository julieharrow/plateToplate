FactoryGirl.define do
  factory :user, class: User do
    sequence(:email) {|num| "email##{num}@email.com"}
    sequence(name) {|num| "User##{num}First" "User##{num}Last"}
    password "password"
    password_confirmation "password"
    zip_code 11111
    happy_to_host true
    happy_to_travel true
    my_story "An interesting anecdote..."
  end

  factory :recipe, class: Recipe do
    sequence(:name) {|num| "Recipe##{num}"}
    ingredients "Ingredient list..."
    instructions "List of instructions..."
    expected_time 20
  end

  factory :interest, class: Interest do
    learn true
    teach false
  end
end
