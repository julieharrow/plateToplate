class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"}, default_url: "/images/default_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :recipes
  has_many :interests
  accepts_nested_attributes_for :interests, reject_if: :all_blank, allow_destroy: true

  def wants_to_learn
    interests.where(learn: true)
  end

  def wants_to_teach
    interests.where(teach: true)
  end

  def my_recipes
    recipes
  end
end
