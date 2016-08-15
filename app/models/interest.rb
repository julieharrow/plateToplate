class Interest < ActiveRecord::Base
  belongs_to :user
  belongs_to :cuisine

  def self.wants_to_learn
    where(learn: true)
  end
  def self.wants_to_teach
    where(teach: true)
  end

  def self.cuisine_teach(cuisine)
    where(teach: true, cuisine_id: cuisine)
  end

  def self.cuisine_learn(cuisine)
    where(learn: true, cuisine_id: cuisine)
  end

end
