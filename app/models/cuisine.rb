class Cuisine < ActiveRecord::Base
  has_many :users, through: :user_cuisines
  has_many :user_cuisines
end
