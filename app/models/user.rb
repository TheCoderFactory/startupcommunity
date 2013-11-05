class User < ActiveRecord::Base
  rolify
  has_one :user_profile
  has_many :user_business_profiles
  has_many :business_profiles, through: :user_business_profiles
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
