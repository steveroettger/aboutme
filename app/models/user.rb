class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable, :validatable
  
  has_many :authentications

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  def apply_omniauth(omniauth)
      self.email = omniauth['info']['email'] if email.blank?
      authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
  end

  def password_required?
      (authentications.empty? || !password.blank?) && super
  end
end
