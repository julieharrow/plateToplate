class Cuisine < ActiveRecord::Base
  has_many :interests
  has_many :recipes

  def teachers
    interests.where(teach:true)
  end

  def students
    interests.where(learn:true)
  end
end
