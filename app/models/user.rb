class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100>"}, default_url: "/images/default_avatar.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  has_many :recipes
  has_many :user_cuisines

  def desired_cuisines
    interests.where(learn: true)
  end
  def user_teach_cuisine
    interests.where(teach: true)
  end
  def self.teach_for_user()
  end
end
