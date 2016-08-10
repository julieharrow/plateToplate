class Cuisine < ActiveRecord::Base
  has_many :users, through: :interests
  has_many :interests
end
