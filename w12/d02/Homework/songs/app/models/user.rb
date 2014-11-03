class User < ActiveRecord::Base
	has_secure_password
	# has_many :songs through: :likes
	validates :password, :name, presence: true
	# validates :email, uniqueness: true
	# validates :email, confirmation: true
end 