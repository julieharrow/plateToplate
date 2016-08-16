class Cuisine < ActiveRecord::Base
  has_many :interests

  def teachers
    interests.where(teach:true)
  end

  def students
    interests.where(learn:true)
  end
end
