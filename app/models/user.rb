class User < ActiveRecord::Base
	has_many :classified_ads

	validates :first_name, presence: true, length: { minimum: 5, maximum: 20 }
	validates :last_name, presence: true, length: { minimum: 5, maximum: 20 }
	validates :email, presence: true, length: { maximum: 40 }, uniqueness: true
	validates :phone, presence: true
	validates :password, presence: true, length: {minimum: 6}
end
