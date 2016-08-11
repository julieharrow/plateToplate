class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"}, default_url: "/images/default_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :recipes
  has_many :interests
  has_many :cuisines
  accepts_nested_attributes_for :cuisines, reject_if: :all_blank, allow_destroy: true

  def desired_cuisines
    arr = []
    arr << interests.where(learn: true)
  end
  def user_teach_cuisine
    interests.where(teach: true)
  end
  def self.teach_for_user()
  end
end
