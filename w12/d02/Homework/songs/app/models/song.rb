class Song <ActiveRecord::Base
	has_many :users through: :likes
	validates :name, :artist presence: true
end 