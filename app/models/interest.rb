class Interest < ActiveRecord::Base
  belongs_to :users
  belongs_to :cuisines



  def self.cuisine_teach(cuisine)
    where(teach: true, cuisine_id: cuisine)
  end
end


#
# def self.cuisine_learn(cuisine)
#   where(learn: true, cuisine_id: cuisine.id)
# end
