class City < ActiveRecord::Base
	has_many :superheros


	validates :name, presence: true
end