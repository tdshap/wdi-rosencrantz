class Role < ActiveRecord::Base
	has_many :actors
	has_many :movies

end 