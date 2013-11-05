class BusinessProfile < ActiveRecord::Base
	has_many :user_business_profiles
	has_many :users, through: :user_business_profiles
  extend FriendlyId
  friendly_id :name, use: :slugged
end
