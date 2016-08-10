class UserCuisine < ActiveRecord::Base
  belongs_to :users
  belongs_to :cuisines
end
